/*
 * TCPZybo.c
 *
 * Code generation for model "TCPZybo".
 *
 * Model version              : 1.13
 * Simulink Coder version : 8.6 (R2014a) 27-Dec-2013
 * C source code generated on : Sun Apr 19 02:18:36 2015
 *
 * Target selection: grt.tlc
 * Note: GRT includes extra infrastructure and instrumentation for prototyping
 * Embedded hardware selection: 32-bit Generic
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */
#include "TCPZybo.h"
#include "TCPZybo_private.h"

/* Block states (auto storage) */
DW_TCPZybo_T TCPZybo_DW;

/* Real-time model */
RT_MODEL_TCPZybo_T TCPZybo_M_;
RT_MODEL_TCPZybo_T *const TCPZybo_M = &TCPZybo_M_;

/* Model step function */
void TCPZybo_step(void)
{
  /* Matfile logging */
  rt_UpdateTXYLogVars(TCPZybo_M->rtwLogInfo, (&TCPZybo_M->Timing.taskTime0));

  /* signal main to stop simulation */
  {                                    /* Sample time: [1.0s, 0.0s] */
    if ((rtmGetTFinal(TCPZybo_M)!=-1) &&
        !((rtmGetTFinal(TCPZybo_M)-TCPZybo_M->Timing.taskTime0) >
          TCPZybo_M->Timing.taskTime0 * (DBL_EPSILON))) {
      rtmSetErrorStatus(TCPZybo_M, "Simulation finished");
    }
  }

  /* Update absolute time for base rate */
  /* The "clockTick0" counts the number of times the code of this task has
   * been executed. The absolute time is the multiplication of "clockTick0"
   * and "Timing.stepSize0". Size of "clockTick0" ensures timer will not
   * overflow during the application lifespan selected.
   * Timer of this task consists of two 32 bit unsigned integers.
   * The two integers represent the low bits Timing.clockTick0 and the high bits
   * Timing.clockTickH0. When the low bit overflows to 0, the high bits increment.
   */
  if (!(++TCPZybo_M->Timing.clockTick0)) {
    ++TCPZybo_M->Timing.clockTickH0;
  }

  TCPZybo_M->Timing.taskTime0 = TCPZybo_M->Timing.clockTick0 *
    TCPZybo_M->Timing.stepSize0 + TCPZybo_M->Timing.clockTickH0 *
    TCPZybo_M->Timing.stepSize0 * 4294967296.0;
}

/* Model initialize function */
void TCPZybo_initialize(void)
{
  /* Registration code */

  /* initialize non-finites */
  rt_InitInfAndNaN(sizeof(real_T));

  /* initialize real-time model */
  (void) memset((void *)TCPZybo_M, 0,
                sizeof(RT_MODEL_TCPZybo_T));
  rtmSetTFinal(TCPZybo_M, -1);
  TCPZybo_M->Timing.stepSize0 = 1.0;

  /* Setup for data logging */
  {
    static RTWLogInfo rt_DataLoggingInfo;
    TCPZybo_M->rtwLogInfo = &rt_DataLoggingInfo;
  }

  /* Setup for data logging */
  {
    rtliSetLogXSignalInfo(TCPZybo_M->rtwLogInfo, (NULL));
    rtliSetLogXSignalPtrs(TCPZybo_M->rtwLogInfo, (NULL));
    rtliSetLogT(TCPZybo_M->rtwLogInfo, "tout");
    rtliSetLogX(TCPZybo_M->rtwLogInfo, "");
    rtliSetLogXFinal(TCPZybo_M->rtwLogInfo, "");
    rtliSetLogVarNameModifier(TCPZybo_M->rtwLogInfo, "rt_");
    rtliSetLogFormat(TCPZybo_M->rtwLogInfo, 0);
    rtliSetLogMaxRows(TCPZybo_M->rtwLogInfo, 1000);
    rtliSetLogDecimation(TCPZybo_M->rtwLogInfo, 1);
    rtliSetLogY(TCPZybo_M->rtwLogInfo, "");
    rtliSetLogYSignalInfo(TCPZybo_M->rtwLogInfo, (NULL));
    rtliSetLogYSignalPtrs(TCPZybo_M->rtwLogInfo, (NULL));
  }

  /* states (dwork) */
  (void) memset((void *)&TCPZybo_DW, 0,
                sizeof(DW_TCPZybo_T));

  /* Matfile logging */
  rt_StartDataLoggingWithStartTime(TCPZybo_M->rtwLogInfo, 0.0, rtmGetTFinal
    (TCPZybo_M), TCPZybo_M->Timing.stepSize0, (&rtmGetErrorStatus(TCPZybo_M)));
}

/* Model terminate function */
void TCPZybo_terminate(void)
{
  /* (no terminate code required) */
}
