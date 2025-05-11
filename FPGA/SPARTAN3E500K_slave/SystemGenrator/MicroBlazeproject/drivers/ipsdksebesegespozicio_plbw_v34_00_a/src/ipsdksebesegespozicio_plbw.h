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

#ifndef __XL_IPSDKSEBESEGESPOZICIO_PLBW_H__
#define __XL_IPSDKSEBESEGESPOZICIO_PLBW_H__

#include "xbasic_types.h"
#include "xstatus.h"
#include "xcope.h"

typedef struct {
    uint32_t version;
    // Pointers to low-level functions
    xc_status_t (*xc_create)(xc_iface_t **, void *);
    xc_status_t (*xc_release)(xc_iface_t **);
    xc_status_t (*xc_open)(xc_iface_t *);
    xc_status_t (*xc_close)(xc_iface_t *);
    xc_status_t (*xc_read)(xc_iface_t *, xc_r_addr_t, uint32_t *);
    xc_status_t (*xc_write)(xc_iface_t *, xc_w_addr_t, const uint32_t);
    xc_status_t (*xc_get_shmem)(xc_iface_t *, const char *, void **shmem);
    // Optional parameters
    // (empty)
    // Memory map information
    uint32_t USebesseg;
    uint32_t USebesseg_n_bits;
    uint32_t USebesseg_bin_pt;
    // uint32_t USebesseg_attr;
    uint32_t UPozicio;
    uint32_t UPozicio_n_bits;
    uint32_t UPozicio_bin_pt;
    // uint32_t UPozicio_attr;
    uint32_t SebessegPozicio;
    uint32_t SebessegPozicio_n_bits;
    uint32_t SebessegPozicio_bin_pt;
    // uint32_t SebessegPozicio_attr;
    uint32_t AktPozicio;
    uint32_t AktPozicio_n_bits;
    uint32_t AktPozicio_bin_pt;
    // uint32_t AktPozicio_attr;
    uint32_t AktSebesseg;
    uint32_t AktSebesseg_n_bits;
    uint32_t AktSebesseg_bin_pt;
    // uint32_t AktSebesseg_attr;
    uint32_t eSebesseg;
    uint32_t eSebesseg_n_bits;
    uint32_t eSebesseg_bin_pt;
    // uint32_t eSebesseg_attr;
    uint32_t PosRef;
    uint32_t PosRef_n_bits;
    uint32_t PosRef_bin_pt;
    // uint32_t PosRef_attr;
    uint32_t Q1;
    uint32_t Q1_n_bits;
    uint32_t Q1_bin_pt;
    // uint32_t Q1_attr;
    uint32_t Q2;
    uint32_t Q2_n_bits;
    uint32_t Q2_bin_pt;
    // uint32_t Q2_attr;
    uint32_t Q0;
    uint32_t Q0_n_bits;
    uint32_t Q0_bin_pt;
    // uint32_t Q0_attr;
    uint32_t PidTs;
    uint32_t PidTs_n_bits;
    uint32_t PidTs_bin_pt;
    // uint32_t PidTs_attr;
    uint32_t PWMfrek;
    uint32_t PWMfrek_n_bits;
    uint32_t PWMfrek_bin_pt;
    // uint32_t PWMfrek_attr;
    uint32_t RefSpeed;
    uint32_t RefSpeed_n_bits;
    uint32_t RefSpeed_bin_pt;
    // uint32_t RefSpeed_attr;
    uint32_t SugarakAranya;
    uint32_t SugarakAranya_n_bits;
    uint32_t SugarakAranya_bin_pt;
    // uint32_t SugarakAranya_attr;
    uint32_t q_sav;
    uint32_t q_sav_n_bits;
    uint32_t q_sav_bin_pt;
    // uint32_t q_sav_attr;
    uint32_t Config;
    uint32_t Config_n_bits;
    uint32_t Config_bin_pt;
    // uint32_t Config_attr;
    // XPS parameters
    Xuint16  DeviceId;
    uint32_t  BaseAddr;
} IPSDKSEBESEGESPOZICIO_PLBW_Config;

extern IPSDKSEBESEGESPOZICIO_PLBW_Config IPSDKSEBESEGESPOZICIO_PLBW_ConfigTable[];

// forward declaration of low-level functions
xc_status_t xc_ipsdksebesegespozicio_plbw_create(xc_iface_t **iface, void *config_table);
xc_status_t xc_ipsdksebesegespozicio_plbw_release(xc_iface_t **iface) ;
xc_status_t xc_ipsdksebesegespozicio_plbw_open(xc_iface_t *iface);
xc_status_t xc_ipsdksebesegespozicio_plbw_close(xc_iface_t *iface);
xc_status_t xc_ipsdksebesegespozicio_plbw_read(xc_iface_t *iface, xc_r_addr_t addr, uint32_t *value);
xc_status_t xc_ipsdksebesegespozicio_plbw_write(xc_iface_t *iface, xc_w_addr_t addr, const uint32_t value);
xc_status_t xc_ipsdksebesegespozicio_plbw_getshmem(xc_iface_t *iface, const char *name, void **shmem);

#endif

