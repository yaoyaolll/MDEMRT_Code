/*
 * Myfunction.h
 *
 *  Created on: 2020Äê7ÔÂ2ÈÕ
 *      Author: pengjingxuan
 */

#ifndef MYFUNCTION_H_
#define MYFUNCTION_H_

void DatZone1ToZero(void);
void DatZone2ToZero(void);

void Delay(unsigned int nDelay);

void EdibSubset2Up(void);
void EdibSubset3Up(void);
void EdibSubset5Up(void);
void EdibSubset6Up(void);

void FpgaInitial(void);

void InitXIntrupt(void);

unsigned int Mcbsp_TxRdy(void);

void SendConnectRelayCmd(void);
void SendDisconnectRelayCmd(void);
void SendHead(void);

void SendownAcqCmd(void);
void SendownCheckCmd(void);
void SendTableDown(void);
void TableSendUp(void);
void TestandInformation(void);
void TableModifyDown(void);
void UpTableCmdDown(void);

void SendOneSpeedCmd(void);
void SendQuadrupleSpeedCmd(void);

void SendCheckRelayCmd(void);
//static void SendTableDown(void);
void VarInitial(void);

#endif /* MYFUNCTION_H_ */
