#include "__cf_botsmosfet.h"
#include <math.h>
#include "botsmosfet_acc.h"
#include "botsmosfet_acc_private.h"
#include <stdio.h>
#include "simstruc.h"
#include "fixedpoint.h"
#define CodeFormat S-Function
#define AccDefine1 Accelerator_S-Function
static void mdlOutputs ( SimStruct * S , int_T tid ) { real_T taskTimeV ;
real_T tNextAdjusted ; uint32_T numCycles ; n3qi1whofz * _rtB ; loikxjbxjg *
_rtP ; ew10rzwqr2 * _rtDW ; _rtDW = ( ( ew10rzwqr2 * ) ssGetRootDWork ( S ) )
; _rtP = ( ( loikxjbxjg * ) ssGetDefaultParam ( S ) ) ; _rtB = ( ( n3qi1whofz
* ) _ssGetBlockIO ( S ) ) ; if ( ssIsSampleHit ( S , 2 , 0 ) ) { taskTimeV =
ssGetTaskTime ( S , 2 ) ; tNextAdjusted = ( real_T ) ssGetTNextWasAdjusted (
S , 2 ) ; if ( tNextAdjusted != 0.0 ) { _rtDW -> da3c0llxum =
_ssGetVarNextHitTime ( S , 0 ) ; } if ( _rtDW -> p4efey5m0l != 0 ) { _rtDW ->
p4efey5m0l = 0 ; if ( taskTimeV >= _rtP -> P_3 ) { tNextAdjusted = (
taskTimeV - _rtP -> P_3 ) / _rtP -> P_1 ; numCycles = ( uint32_T )
muDoubleScalarFloor ( tNextAdjusted ) ; if ( muDoubleScalarAbs ( ( real_T ) (
numCycles + 1U ) - tNextAdjusted ) < DBL_EPSILON * tNextAdjusted ) {
numCycles ++ ; } _rtDW -> h24slhjgem = numCycles ; tNextAdjusted = ( ( real_T
) numCycles * _rtP -> P_1 + _rtP -> P_3 ) + _rtP -> P_2 * _rtP -> P_1 / 100.0
; if ( taskTimeV < tNextAdjusted ) { _rtDW -> li3ncrxn2t = 1 ; _rtDW ->
da3c0llxum = tNextAdjusted ; } else { _rtDW -> li3ncrxn2t = 0 ; _rtDW ->
da3c0llxum = ( real_T ) ( numCycles + 1U ) * _rtP -> P_1 + _rtP -> P_3 ; } }
else { _rtDW -> h24slhjgem = _rtP -> P_3 != 0.0 ? - 1 : 0 ; _rtDW ->
li3ncrxn2t = 0 ; _rtDW -> da3c0llxum = _rtP -> P_3 ; } } else { if ( _rtDW ->
da3c0llxum <= taskTimeV ) { if ( _rtDW -> li3ncrxn2t == 1 ) { _rtDW ->
li3ncrxn2t = 0 ; _rtDW -> da3c0llxum = ( real_T ) ( _rtDW -> h24slhjgem + 1LL
) * _rtP -> P_1 + _rtP -> P_3 ; } else { _rtDW -> h24slhjgem ++ ; _rtDW ->
li3ncrxn2t = 1 ; _rtDW -> da3c0llxum = ( _rtP -> P_2 * _rtP -> P_1 * 0.01 + (
real_T ) _rtDW -> h24slhjgem * _rtP -> P_1 ) + _rtP -> P_3 ; } } }
_ssSetVarNextHitTime ( S , 0 , _rtDW -> da3c0llxum ) ; if ( _rtDW ->
li3ncrxn2t == 1 ) { _rtB -> as1wry4frr = _rtP -> P_0 ; } else { _rtB ->
as1wry4frr = 0.0 ; } } if ( ssIsSampleHit ( S , 1 , 0 ) ) { _rtB ->
cdyeb2ndin = _rtB -> as1wry4frr ; } ssCallAccelRunBlock ( S , 0 , 2 ,
SS_CALL_MDL_OUTPUTS ) ; if ( ssIsSampleHit ( S , 3 , 0 ) ) { taskTimeV =
ssGetTaskTime ( S , 3 ) ; tNextAdjusted = ( real_T ) ssGetTNextWasAdjusted (
S , 3 ) ; if ( tNextAdjusted != 0.0 ) { _rtDW -> ggtmcn3rrm =
_ssGetVarNextHitTime ( S , 1 ) ; } if ( _rtDW -> bdghmqzhux != 0 ) { _rtDW ->
bdghmqzhux = 0 ; if ( taskTimeV >= _rtP -> P_7 ) { tNextAdjusted = (
taskTimeV - _rtP -> P_7 ) / _rtP -> P_5 ; numCycles = ( uint32_T )
muDoubleScalarFloor ( tNextAdjusted ) ; if ( muDoubleScalarAbs ( ( real_T ) (
numCycles + 1U ) - tNextAdjusted ) < DBL_EPSILON * tNextAdjusted ) {
numCycles ++ ; } _rtDW -> j1jmk3gvav = numCycles ; tNextAdjusted = ( ( real_T
) numCycles * _rtP -> P_5 + _rtP -> P_7 ) + _rtP -> P_6 * _rtP -> P_5 / 100.0
; if ( taskTimeV < tNextAdjusted ) { _rtDW -> bz0xhqtkxi = 1 ; _rtDW ->
ggtmcn3rrm = tNextAdjusted ; } else { _rtDW -> bz0xhqtkxi = 0 ; _rtDW ->
ggtmcn3rrm = ( real_T ) ( numCycles + 1U ) * _rtP -> P_5 + _rtP -> P_7 ; } }
else { _rtDW -> j1jmk3gvav = _rtP -> P_7 != 0.0 ? - 1 : 0 ; _rtDW ->
bz0xhqtkxi = 0 ; _rtDW -> ggtmcn3rrm = _rtP -> P_7 ; } } else { if ( _rtDW ->
ggtmcn3rrm <= taskTimeV ) { if ( _rtDW -> bz0xhqtkxi == 1 ) { _rtDW ->
bz0xhqtkxi = 0 ; _rtDW -> ggtmcn3rrm = ( real_T ) ( _rtDW -> j1jmk3gvav + 1LL
) * _rtP -> P_5 + _rtP -> P_7 ; } else { _rtDW -> j1jmk3gvav ++ ; _rtDW ->
bz0xhqtkxi = 1 ; _rtDW -> ggtmcn3rrm = ( _rtP -> P_6 * _rtP -> P_5 * 0.01 + (
real_T ) _rtDW -> j1jmk3gvav * _rtP -> P_5 ) + _rtP -> P_7 ; } } }
_ssSetVarNextHitTime ( S , 1 , _rtDW -> ggtmcn3rrm ) ; if ( _rtDW ->
bz0xhqtkxi == 1 ) { _rtB -> jd3ahkgptu = _rtP -> P_4 ; } else { _rtB ->
jd3ahkgptu = 0.0 ; } } if ( ssIsSampleHit ( S , 1 , 0 ) ) { _rtB ->
njc3hw3hwy = _rtB -> jd3ahkgptu ; } ssCallAccelRunBlock ( S , 0 , 5 ,
SS_CALL_MDL_OUTPUTS ) ; ssCallAccelRunBlock ( S , 0 , 6 , SS_CALL_MDL_OUTPUTS
) ; ssCallAccelRunBlock ( S , 0 , 7 , SS_CALL_MDL_OUTPUTS ) ; _rtB ->
ao5k1evvjw = _rtB -> d3nvpfnyax [ 1 ] - _rtB -> d3nvpfnyax [ 0 ] ;
ssCallAccelRunBlock ( S , 0 , 9 , SS_CALL_MDL_OUTPUTS ) ; ssCallAccelRunBlock
( S , 0 , 23 , SS_CALL_MDL_OUTPUTS ) ; UNUSED_PARAMETER ( tid ) ; }
#define MDL_UPDATE
static void mdlUpdate ( SimStruct * S , int_T tid ) { ssCallAccelRunBlock ( S
, 0 , 6 , SS_CALL_MDL_UPDATE ) ; UNUSED_PARAMETER ( tid ) ; }
#define MDL_DERIVATIVES
static void mdlDerivatives ( SimStruct * S ) { ssCallAccelRunBlock ( S , 0 ,
6 , SS_CALL_MDL_DERIVATIVES ) ; }
#define MDL_FORCINGFUNCTION
static void mdlForcingFunction ( SimStruct * S ) { ssCallAccelRunBlock ( S ,
0 , 6 , SS_CALL_MDL_FORCINGFUNCTION ) ; }
#define MDL_MASSMATRIX
static void mdlMassMatrix ( SimStruct * S ) { ssCallAccelRunBlock ( S , 0 , 6
, SS_CALL_MDL_MASSMATRIX ) ; }
#define MDL_ZERO_CROSSINGS
static void mdlZeroCrossings ( SimStruct * S ) { ssCallAccelRunBlock ( S , 0
, 6 , SS_CALL_MDL_ZERO_CROSSINGS ) ; } static void mdlInitializeSizes (
SimStruct * S ) { ssSetChecksumVal ( S , 0 , 2885707787U ) ; ssSetChecksumVal
( S , 1 , 3182960068U ) ; ssSetChecksumVal ( S , 2 , 1334746624U ) ;
ssSetChecksumVal ( S , 3 , 3633677878U ) ; { mxArray * slVerStructMat = NULL
; mxArray * slStrMat = mxCreateString ( "simulink" ) ; char slVerChar [ 10 ]
; int status = mexCallMATLAB ( 1 , & slVerStructMat , 1 , & slStrMat , "ver"
) ; if ( status == 0 ) { mxArray * slVerMat = mxGetField ( slVerStructMat , 0
, "Version" ) ; if ( slVerMat == NULL ) { status = 1 ; } else { status =
mxGetString ( slVerMat , slVerChar , 10 ) ; } } mxDestroyArray ( slStrMat ) ;
mxDestroyArray ( slVerStructMat ) ; if ( ( status == 1 ) || ( strcmp (
slVerChar , "8.3" ) != 0 ) ) { return ; } } ssSetOptions ( S ,
SS_OPTION_EXCEPTION_FREE_CODE ) ; if ( ssGetSizeofDWork ( S ) != sizeof (
ew10rzwqr2 ) ) { ssSetErrorStatus ( S ,
"Unexpected error: Internal DWork sizes do "
"not match for accelerator mex file." ) ; } if ( ssGetSizeofGlobalBlockIO ( S
) != sizeof ( n3qi1whofz ) ) { ssSetErrorStatus ( S ,
"Unexpected error: Internal BlockIO sizes do "
"not match for accelerator mex file." ) ; } { int ssSizeofParams ;
ssGetSizeofParams ( S , & ssSizeofParams ) ; if ( ssSizeofParams != sizeof (
loikxjbxjg ) ) { static char msg [ 256 ] ; sprintf ( msg ,
"Unexpected error: Internal Parameters sizes do "
"not match for accelerator mex file." ) ; } } _ssSetDefaultParam ( S , (
real_T * ) & o2iu0a2jke ) ; if ( ssGetSizeofDWork ( S ) == sizeof (
ew10rzwqr2 ) ) { { ( ( ew10rzwqr2 * ) ssGetRootDWork ( S ) ) -> j0ouhbxtwp =
0 ; } } } static void mdlInitializeSampleTimes ( SimStruct * S ) { } static
void mdlTerminate ( SimStruct * S ) { }
#include "simulink.c"
