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

#ifndef __XL_PWMMODLMAG_PLBW_H__
#define __XL_PWMMODLMAG_PLBW_H__

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
    uint32_t Config;
    uint32_t Config_n_bits;
    uint32_t Config_bin_pt;
    // uint32_t Config_attr;
    uint32_t Duty;
    uint32_t Duty_n_bits;
    uint32_t Duty_bin_pt;
    // uint32_t Duty_attr;
    // XPS parameters
    Xuint16  DeviceId;
    uint32_t  BaseAddr;
} PWMMODLMAG_PLBW_Config;

extern PWMMODLMAG_PLBW_Config PWMMODLMAG_PLBW_ConfigTable[];

// forward declaration of low-level functions
xc_status_t xc_pwmmodlmag_plbw_create(xc_iface_t **iface, void *config_table);
xc_status_t xc_pwmmodlmag_plbw_release(xc_iface_t **iface) ;
xc_status_t xc_pwmmodlmag_plbw_open(xc_iface_t *iface);
xc_status_t xc_pwmmodlmag_plbw_close(xc_iface_t *iface);
xc_status_t xc_pwmmodlmag_plbw_read(xc_iface_t *iface, xc_r_addr_t addr, uint32_t *value);
xc_status_t xc_pwmmodlmag_plbw_write(xc_iface_t *iface, xc_w_addr_t addr, const uint32_t value);
xc_status_t xc_pwmmodlmag_plbw_getshmem(xc_iface_t *iface, const char *name, void **shmem);

#endif

