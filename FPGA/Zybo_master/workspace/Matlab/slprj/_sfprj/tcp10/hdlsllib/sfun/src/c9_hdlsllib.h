#ifndef __c9_hdlsllib_h__
#define __c9_hdlsllib_h__

/* Include files */
#include "sf_runtime/sfc_sf.h"
#include "sf_runtime/sfc_mex.h"
#include "rtwtypes.h"
#include "multiword_types.h"

/* Type Definitions */
#ifndef typedef_SFc9_hdlsllibInstanceStruct
#define typedef_SFc9_hdlsllibInstanceStruct

typedef struct {
  SimStruct *S;
  ChartInfoStruct chartInfo;
  uint8_T c9_is_active_c9_hdlsllib;
  real_T c9_mode;
  real_T c9_N;
} SFc9_hdlsllibInstanceStruct;

#endif                                 /*typedef_SFc9_hdlsllibInstanceStruct*/

/* Named Constants */

/* Variable Declarations */

/* Variable Definitions */

/* Function Declarations */
extern const mxArray *sf_c9_hdlsllib_get_eml_resolved_functions_info(void);

/* Function Definitions */
extern void sf_c9_hdlsllib_get_check_sum(mxArray *plhs[]);
extern void c9_hdlsllib_method_dispatcher(SimStruct *S, int_T method, void *data);

#endif
