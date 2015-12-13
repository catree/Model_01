#ifndef __c10_Model_01_h__
#define __c10_Model_01_h__

/* Include files */
#include "sf_runtime/sfc_sf.h"
#include "sf_runtime/sfc_mex.h"
#include "rtwtypes.h"
#include "multiword_types.h"

/* Type Definitions */
#ifndef typedef_SFc10_Model_01InstanceStruct
#define typedef_SFc10_Model_01InstanceStruct

typedef struct {
  SimStruct *S;
  ChartInfoStruct chartInfo;
  uint32_T chartNumber;
  uint32_T instanceNumber;
  int32_T c10_sfEvent;
  boolean_T c10_isStable;
  boolean_T c10_doneDoubleBufferReInit;
  uint8_T c10_is_active_c10_Model_01;
} SFc10_Model_01InstanceStruct;

#endif                                 /*typedef_SFc10_Model_01InstanceStruct*/

/* Named Constants */

/* Variable Declarations */

/* Variable Definitions */

/* Function Declarations */
extern const mxArray *sf_c10_Model_01_get_eml_resolved_functions_info(void);

/* Function Definitions */
extern void sf_c10_Model_01_get_check_sum(mxArray *plhs[]);
extern void c10_Model_01_method_dispatcher(SimStruct *S, int_T method, void
  *data);

#endif
