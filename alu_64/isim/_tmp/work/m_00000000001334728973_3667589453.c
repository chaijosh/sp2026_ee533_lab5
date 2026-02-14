/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2007 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

/* This file is designed for use with ISim build 0x734844ce */

#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif



static void C139_0(char *t0)
{
    char t3[16];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    t1 = (t0 + 4868U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 4260U);
    t4 = *((char **)t2);
    xsi_vlog_get_part_select_value(t3, 64, t4, 63, 0);
    t2 = (t0 + 5092);
    t5 = (t2 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    xsi_vlog_bit_copy(t8, 0, t3, 0, 64);
    xsi_driver_vfirst_trans(t2, 0, 63);
    t9 = (t0 + 5048);
    *((int *)t9) = 1;

LAB1:    return;
}


extern void work_m_00000000001334728973_3667589453_init()
{
	static char *pe[] = {(void *)C139_0};
	xsi_register_didat("work_m_00000000001334728973_3667589453", "isim/_tmp/work/m_00000000001334728973_3667589453.didat");
	xsi_register_executes(pe);
}
