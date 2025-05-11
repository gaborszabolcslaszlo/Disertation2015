#include "GyroReg.h"
//#include <xil_types.h>

gyroVal getValues(gyroReg i)
{
  gyroVal v;
  v.x_accel=i.x_accel_h<<8+i.x_accel_l;
  v.y_accel=i.y_accel_h<<8+i.y_accel_l;
  v.z_accel=i.z_accel_h<<8+i.z_accel_l;
  v.x_gyro=i.x_gyro_h<<8+i.x_gyro_l;
  v.y_gyro=i.y_gyro_h<<8+i.y_gyro_l;
  v.z_gyro=i.z_gyro_h<<8+i.z_gyro_l;
  v.temperature=i.t_h<<8+i.t_l;
  return v;
}

gyroReg arrayToReg(u8 *i)
{
 gyroReg o;
 o.x_accel_h=i[0];
 o.x_accel_l=i[1];
 o.y_accel_h=i[2];
 o.y_accel_l=i[3];
 o.z_accel_h=i[4];
 o.z_accel_l=i[5];
 o.t_h=i[6];
 o.t_l=i[7];
 o.x_gyro_h=i[8];
 o.x_gyro_l=i[9];
 o.y_gyro_h=i[10];
 o.y_gyro_l=i[11];
 o.z_gyro_h=i[12];
 o.z_gyro_l=i[13];

 return o;
}
