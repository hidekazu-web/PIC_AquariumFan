#ifndef VFD_CTRL_h
#define VFD_CTRL_h


void vfd_init(void);
void vfd_ctrl(void);

void vfd_data_transmit(void);
void vfd_write(unsigned char data);

void InttoAscii(int data, unsigned char * ascii);
void DoubletoAscii(double data, unsigned char * ascii);

#endif