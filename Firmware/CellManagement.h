#ifndef CELLMANAGEMENT_H_
#define CELLMANAGEMENT_H_

typedef enum
{
	CellStatusUnderVoltage,
	CellStatusNormal,
	CellStatusBalancing,
	CellStatusOverVoltage
} cellStatus_t;

extern cellStatus_t ManageCell(uint32_t* cellVoltage);

#endif
