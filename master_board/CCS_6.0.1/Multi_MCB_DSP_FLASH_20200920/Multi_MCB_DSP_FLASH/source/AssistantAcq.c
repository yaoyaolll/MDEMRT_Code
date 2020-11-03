// TI File $Revision: /main/2 $
// Checkin $Date: April 29, 2005   11:00:54 $
//###########################################################################
//
// FILE:   EdibRcv.c
//
// TITLE:  DSP28 External Interrupt Initialization & Support Functions.
//
//###########################################################################
// $TI Release: DSP281x Header Files V1.11 $
// $Release Date: September 26, 2007 $
//###########################################################################

#include "DSP281x_Device.h"     // DSP281x Headerfile Include File
#include "Myfunction.h"
//#include "DSP281x_Examples.h"   // DSP281x Examples Include File


extern int y;
extern int ConvertFlag;
extern int ConvertDoneFlag;
extern int i;
extern float CorrectionFactor;
extern float MagTempMid;//MARTD
extern float HeatSNKTempMid;//HSRTD
extern float ChargeVoltageMid;
extern float EndothermicagentMid;//在接口文档中对应TEMP2D
extern float PreamplifierMid;//在接口文档中对应TEMP3D
extern float LowerportMid;//在接口文档中对应TEMP4D
extern float EventMid;//在接口文档中对应TEMP1D
extern float PoweramplifierMid;
extern int16 SAssAcqCounter;
extern int16 VacuumFlaskTemp;
extern int16 MagTemp;
extern int16 HeatSNKTemp;
extern int16 ChargeVoltage;
extern int16 EndothermicagentTemp;
extern int16 PreamplifierTemp;
extern int16 LowerportTemp;
extern int16 EventTemp;
extern int16 PoweramplifierTemp;

extern int16 ADC_ref;

extern int16 VacuumFlaskTemp1;
extern int16 MagTemp1;
extern int16 HeatSNKTemp1;
extern int16 ChargeVoltage1;
extern int16 EndothermicagentTemp1;
extern int16 PreamplifierTemp1;
extern int16 LowerportTemp1;
extern int16 EventTemp1;
extern int16 PoweramplifierTemp1;

//extern Uint16 OrderFlag;
extern long AssVar[12];
extern int16 *AdcRegPt;
int16 ADCValue[3];
int16 ACQ_Value[12];        //通过模拟开关选择采集不同信号并存储的一个数组中
extern int16 ACQ_cnt;


interrupt void AdcRcvInt(void);
void AdcRst(void);
void AssAcqDataProcess(void);
void GetADCValue();
float ADC_REF;

interrupt void AdcRcvInt(void)
{
	GetADCValue();
	for(y=0;y<3;y++)
	{
		AssVar[ACQ_cnt]=ADCValue[y];
		ACQ_cnt++;
	}
	Close_ADC=0x2;
	ConvertFlag=0; //清采集标志

	if(ACQ_cnt==12)
	{
		ACQ_cnt=0;
//       GpioDataRegs.GPADAT.bit.GPIOA3=0;//关闭S2_ON
//		GpioDataRegs.GPADAT.bit.GPIOA2=1;//关闭CTRL_SW
   		ConvertDoneFlag=1;  //置单周期内辅助参量采集完成标志，即数据处理标志
   		ConvertFlag=1;  //采集12次后不继续采集，所以该标志置1
	}
	else
	{
		Delay(4000);
	}

   PieCtrlRegs.PIEACK.all=PIEACK_GROUP1;
   IER |= 0x0121;
   EINT;
   return;
}

void AssAcqDataProcess(void)
{
	float CurrentCorrection1 = 0;
	float CurrentCorrection2 = 0;

	CorrectionFactor=((float)2500)/(32767);  				 //CorrectionFactor为float，数字量变为模拟量

	CurrentCorrection1=AssVar[1]/((float)1000);
	CurrentCorrection2=AssVar[2]/((float)1000);

	ChargeVoltage = CorrectionFactor*(AssVar[0]+AssVar[3]+AssVar[6]+AssVar[9])/4.0*4.01;//CorrectionFactor*(AssVar[0]+AssVar[3]+AssVar[6]+AssVar[9])/4.0*24.3424;

	MagTempMid=AssVar[4]/CurrentCorrection1-1000;          //MARTD
	MagTemp=MagTempMid/0.381;

	HeatSNKTempMid=AssVar[7]/CurrentCorrection1-1000;      //HSRTD
	HeatSNKTemp=HeatSNKTempMid/0.381;

	EndothermicagentMid=AssVar[8]/CurrentCorrection2-1000; //AntDr&Dp_absorbtempD
	EndothermicagentTemp=EndothermicagentMid/0.381;

	PreamplifierMid=AssVar[5]/CurrentCorrection2-1000;	   //PreAmp_tempD
	PreamplifierTemp=PreamplifierMid/0.381;

	LowerportMid=AssVar[10]/CurrentCorrection1-1000;       //AntTun_tempD
	LowerportTemp=LowerportMid/0.381;

	EventMid=AssVar[11]/CurrentCorrection2-1000;            //Event_tempD
	EventTemp=EventMid/0.381;
}

void GetADCValue()
{
  	AdcRegPt= (int16 *)Adc_reg;

	FPGA_ADC1_Choice = 0x01;
    asm(" NOP");
   	ADCValue[0] = *AdcRegPt;

	FPGA_ADC2_Choice = 0x02;
    asm(" NOP");
   	ADCValue[1] = *AdcRegPt;

	FPGA_ADC3_Choice = 0x03;
    asm(" NOP");
   	ADCValue[2] = *AdcRegPt;
/*
	FPGA_ADC4_Choice = 0x04;
    asm(" NOP");
   	ADCValue[3] = *AdcRegPt;
*/
}

void AdcRst(void)
{
	for(y=0;y<300;y++)
	{

		Open_ADC=0x1;
		Delay(100);
		Close_ADC=0x2;
		Delay(100);

	}
}


