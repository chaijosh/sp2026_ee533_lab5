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



static void C67_0(char *t0)
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

LAB0:    t1 = (t0 + 4076U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 3204U);
    t4 = *((char **)t2);
    xsi_vlog_get_part_select_value(t3, 64, t4, 63, 0);
    t2 = (t0 + 4844);
    t5 = (t2 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    xsi_vlog_bit_copy(t8, 0, t3, 0, 64);
    xsi_driver_vfirst_trans(t2, 0, 63);
    t9 = (t0 + 4768);
    *((int *)t9) = 1;

LAB1:    return;
}

static void C68_1(char *t0)
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

LAB0:    t1 = (t0 + 4204U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 3116U);
    t4 = *((char **)t2);
    xsi_vlog_get_part_select_value(t3, 64, t4, 63, 0);
    t2 = (t0 + 4880);
    t5 = (t2 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    xsi_vlog_bit_copy(t8, 0, t3, 0, 64);
    xsi_driver_vfirst_trans(t2, 0, 63);
    t9 = (t0 + 4776);
    *((int *)t9) = 1;

LAB1:    return;
}

static void C69_2(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;

LAB0:    t1 = (t0 + 4332U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 3380U);
    t4 = *((char **)t2);
    memset(t3, 0, 8);
    t2 = (t3 + 4U);
    t5 = (t4 + 4U);
    t6 = *((unsigned int *)t4);
    t7 = (t6 >> 0);
    *((unsigned int *)t3) = t7;
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 0);
    *((unsigned int *)t2) = t9;
    t10 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t10 & 4294967295U);
    t11 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t11 & 4294967295U);
    t12 = (t0 + 4916);
    t13 = (t12 + 32U);
    t14 = *((char **)t13);
    t15 = (t14 + 40U);
    t16 = *((char **)t15);
    memcpy(t16, t3, 8);
    xsi_driver_vfirst_trans(t12, 0, 31);
    t17 = (t0 + 4784);
    *((int *)t17) = 1;

LAB1:    return;
}

static void C70_3(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    char *t27;

LAB0:    t1 = (t0 + 4460U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 3292U);
    t4 = *((char **)t2);
    memset(t3, 0, 8);
    t2 = (t3 + 4U);
    t5 = (t4 + 4U);
    t6 = *((unsigned int *)t4);
    t7 = (t6 >> 0);
    *((unsigned int *)t3) = t7;
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 0);
    *((unsigned int *)t2) = t9;
    t10 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t10 & 31U);
    t11 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t11 & 31U);
    t12 = (t0 + 4952);
    t13 = (t12 + 32U);
    t14 = *((char **)t13);
    t15 = (t14 + 40U);
    t16 = *((char **)t15);
    t17 = (t16 + 4U);
    t18 = 31U;
    t19 = t18;
    t20 = (t3 + 4U);
    t21 = *((unsigned int *)t3);
    t18 = (t18 & t21);
    t22 = *((unsigned int *)t20);
    t19 = (t19 & t22);
    t23 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t23 & 4294967264U);
    t24 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t24 | t18);
    t25 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t25 & 4294967264U);
    t26 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t26 | t19);
    xsi_driver_vfirst_trans(t12, 0, 4);
    t27 = (t0 + 4792);
    *((int *)t27) = 1;

LAB1:    return;
}

static void C71_4(char *t0)
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

LAB0:    t1 = (t0 + 4588U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 3468U);
    t4 = *((char **)t2);
    xsi_vlog_get_part_select_value(t3, 64, t4, 63, 0);
    t2 = (t0 + 4988);
    t5 = (t2 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    xsi_vlog_bit_copy(t8, 0, t3, 0, 64);
    xsi_driver_vfirst_trans(t2, 0, 63);
    t9 = (t0 + 4800);
    *((int *)t9) = 1;

LAB1:    return;
}


extern void work_m_00000000000189867327_0633659971_init()
{
	static char *pe[] = {(void *)C67_0,(void *)C68_1,(void *)C69_2,(void *)C70_3,(void *)C71_4};
	xsi_register_didat("work_m_00000000000189867327_0633659971", "isim/_tmp/work/m_00000000000189867327_0633659971.didat");
	xsi_register_executes(pe);
}
