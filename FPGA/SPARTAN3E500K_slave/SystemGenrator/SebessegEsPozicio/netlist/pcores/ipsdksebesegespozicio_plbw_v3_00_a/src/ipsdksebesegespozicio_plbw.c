///////////////////////////////////////////////////////////////-*-C-*-
//
// Copyright (c) 2010 Xilinx, Inc.  All rights reserved.
//
// Xilinx, Inc.  XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION
// "AS IS" AS  A COURTESY TO YOU.  BY PROVIDING  THIS DESIGN, CODE, OR
// INFORMATION  AS  ONE   POSSIBLE  IMPLEMENTATION  OF  THIS  FEATURE,
// APPLICATION OR  STANDARD, XILINX  IS MAKING NO  REPRESENTATION THAT
// THIS IMPLEMENTATION  IS FREE FROM  ANY CLAIMS OF  INFRINGEMENT, AND
// YOU ARE  RESPONSIBLE FOR OBTAINING  ANY RIGHTS YOU MAY  REQUIRE FOR
// YOUR  IMPLEMENTATION.   XILINX  EXPRESSLY  DISCLAIMS  ANY  WARRANTY
// WHATSOEVER  WITH RESPECT  TO  THE ADEQUACY  OF THE  IMPLEMENTATION,
// INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR REPRESENTATIONS THAT
// THIS IMPLEMENTATION  IS FREE  FROM CLAIMS OF  INFRINGEMENT, IMPLIED
// WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.
// 
//////////////////////////////////////////////////////////////////////

#include "ipsdksebesegespozicio_plbw.h"
#include "xparameters.h"
#include "xil_io.h"
#include "xcope.h"

inline xc_status_t xc_ipsdksebesegespozicio_plbw_create(xc_iface_t **iface, void *config_table)
{
    // set up iface
    *iface = (xc_iface_t *) config_table;

#ifdef XC_DEBUG
    IPSDKSEBESEGESPOZICIO_PLBW_Config *_config_table = config_table;

    if (_config_table->xc_create == NULL) {
        print("config_table.xc_create == NULL\r\n");
        exit(1);
    }
#endif

    // does nothing
    return XC_SUCCESS;
}

inline xc_status_t xc_ipsdksebesegespozicio_plbw_release(xc_iface_t **iface) 
{
    // does nothing
    return XC_SUCCESS;
}

inline xc_status_t xc_ipsdksebesegespozicio_plbw_open(xc_iface_t *iface)
{
    // does nothing
    return XC_SUCCESS;
}

inline xc_status_t xc_ipsdksebesegespozicio_plbw_close(xc_iface_t *iface)
{
    // does nothing
    return XC_SUCCESS;
}

inline xc_status_t xc_ipsdksebesegespozicio_plbw_read(xc_iface_t *iface, xc_r_addr_t addr, uint32_t *value)
{
    *value = Xil_In32((uint32_t *) addr);
    return XC_SUCCESS;
}

inline xc_status_t xc_ipsdksebesegespozicio_plbw_write(xc_iface_t *iface, xc_w_addr_t addr, const uint32_t value)
{
    Xil_Out32((uint32_t *) addr, value);
    return XC_SUCCESS;
}

xc_status_t xc_ipsdksebesegespozicio_plbw_getshmem(xc_iface_t *iface, const char *name, void **shmem)
{
    IPSDKSEBESEGESPOZICIO_PLBW_Config *_config_table = (IPSDKSEBESEGESPOZICIO_PLBW_Config *) iface;

    if (strcmp("USebesseg", name) == 0) {
        *shmem = (void *) & _config_table->USebesseg;
    } else if (strcmp("UPozicio", name) == 0) {
        *shmem = (void *) & _config_table->UPozicio;
    } else if (strcmp("SebessegPozicio", name) == 0) {
        *shmem = (void *) & _config_table->SebessegPozicio;
    } else if (strcmp("AktPozicio", name) == 0) {
        *shmem = (void *) & _config_table->AktPozicio;
    } else if (strcmp("SzurtSebessegPozicio", name) == 0) {
        *shmem = (void *) & _config_table->SzurtSebessegPozicio;
    } else if (strcmp("AktSebesseg", name) == 0) {
        *shmem = (void *) & _config_table->AktSebesseg;
    } else if (strcmp("SzurtSebesseg", name) == 0) {
        *shmem = (void *) & _config_table->SzurtSebesseg;
    } else if (strcmp("Config", name) == 0) {
        *shmem = (void *) & _config_table->Config;
    } else if (strcmp("PosRef", name) == 0) {
        *shmem = (void *) & _config_table->PosRef;
    } else if (strcmp("Q1", name) == 0) {
        *shmem = (void *) & _config_table->Q1;
    } else if (strcmp("Q2", name) == 0) {
        *shmem = (void *) & _config_table->Q2;
    } else if (strcmp("Q0", name) == 0) {
        *shmem = (void *) & _config_table->Q0;
    } else if (strcmp("PidTs", name) == 0) {
        *shmem = (void *) & _config_table->PidTs;
    } else if (strcmp("PWMfrek", name) == 0) {
        *shmem = (void *) & _config_table->PWMfrek;
    } else if (strcmp("RefSpeed", name) == 0) {
        *shmem = (void *) & _config_table->RefSpeed;
    } else if (strcmp("SugarakAranya", name) == 0) {
        *shmem = (void *) & _config_table->SugarakAranya;
    } else if (strcmp("q_sav", name) == 0) {
        *shmem = (void *) & _config_table->q_sav;
    }
    else { *shmem = NULL; return XC_FAILURE; }

    return XC_SUCCESS;
}
