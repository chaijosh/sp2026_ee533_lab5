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
static const char *ng0 = "//vmware-host/Shared Folders/VM_Share/533_lab5/alu_64/alu_64tb.tfw";
static unsigned int ng1[] = {252645135U, 0U, 252645135U, 0U};
static unsigned int ng2[] = {4U, 0U};
static unsigned int ng3[] = {4042322160U, 0U, 4042322160U, 0U};
static unsigned int ng4[] = {252649231U, 0U, 252645135U, 0U};
static unsigned int ng5[] = {1U, 0U};
static unsigned int ng6[] = {0U, 0U, 4042322160U, 0U};
static unsigned int ng7[] = {0U, 0U, 1894838512U, 0U};
static unsigned int ng8[] = {9U, 0U};
static unsigned int ng9[] = {8U, 0U};
static unsigned int ng10[] = {5U, 0U};
static unsigned int ng11[] = {16843009U, 0U, 16843009U, 0U};
static unsigned int ng12[] = {6U, 0U};
static unsigned int ng13[] = {7U, 0U};
static unsigned int ng14[] = {2U, 0U};
static unsigned int ng15[] = {3U, 0U};
static unsigned int ng16[] = {4037791215U, 0U, 4037791215U, 0U};
static unsigned int ng17[] = {136U, 0U};
static unsigned int ng18[] = {1U, 0U, 0U, 0U};
static unsigned int ng19[] = {0U, 0U, 4210752250U, 0U};
static unsigned int ng20[] = {68U, 0U};
static unsigned int ng21[] = {4043309056U, 0U, 0U, 0U};
static unsigned int ng22[] = {127U, 0U};
static unsigned int ng23[] = {63U, 0U};
static unsigned int ng24[] = {16U, 0U};
static unsigned int ng25[] = {4294901760U, 0U, 4294967295U, 0U};
static unsigned int ng26[] = {0U, 0U, 4294967295U, 0U};
static unsigned int ng27[] = {0U, 0U};
static unsigned int ng28[] = {0U, 0U, 4278190080U, 0U};
static unsigned int ng29[] = {0U, 0U, 2399141888U, 0U};
static unsigned int ng30[] = {0U, 0U, 4294901760U, 0U};
static unsigned int ng31[] = {0U, 0U, 150990848U, 0U};
static unsigned int ng32[] = {0U, 0U, 2415853568U, 0U};
static unsigned int ng33[] = {0U, 0U, 1879048192U, 0U};
static unsigned int ng34[] = {0U, 0U, 2147483648U, 0U};
static unsigned int ng35[] = {1414035088U, 0U, 4278299324U, 0U};
static unsigned int ng36[] = {1430808408U, 0U, 4278233788U, 0U};
static unsigned int ng37[] = {180U, 0U};



static void I46_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;

LAB0:    t1 = (t0 + 1988U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(46, ng0);

LAB4:    xsi_set_current_line(48, ng0);
    t2 = (t0 + 1904);
    xsi_process_wait(t2, 100000000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(49, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1052);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 64);
    xsi_set_current_line(50, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1420);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 7);
    xsi_set_current_line(53, ng0);
    t2 = (t0 + 1904);
    xsi_process_wait(t2, 100000000LL);
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    xsi_set_current_line(54, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1236);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 64);
    xsi_set_current_line(57, ng0);
    t2 = (t0 + 1904);
    xsi_process_wait(t2, 100000000LL);
    *((char **)t1) = &&LAB7;
    goto LAB1;

LAB7:    xsi_set_current_line(58, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 1052);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 64);
    xsi_set_current_line(61, ng0);
    t2 = (t0 + 1904);
    xsi_process_wait(t2, 100000000LL);
    *((char **)t1) = &&LAB8;
    goto LAB1;

LAB8:    xsi_set_current_line(62, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1052);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 64);
    xsi_set_current_line(63, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 1144);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(64, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 1236);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 64);
    xsi_set_current_line(67, ng0);
    t2 = (t0 + 1904);
    xsi_process_wait(t2, 100000000LL);
    *((char **)t1) = &&LAB9;
    goto LAB1;

LAB9:    xsi_set_current_line(68, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 1236);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 64);
    xsi_set_current_line(71, ng0);
    t2 = (t0 + 1904);
    xsi_process_wait(t2, 100000000LL);
    *((char **)t1) = &&LAB10;
    goto LAB1;

LAB10:    xsi_set_current_line(72, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 1144);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(73, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 1236);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 64);
    xsi_set_current_line(76, ng0);
    t2 = (t0 + 1904);
    xsi_process_wait(t2, 100000000LL);
    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB11:    xsi_set_current_line(77, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 1144);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(80, ng0);
    t2 = (t0 + 1904);
    xsi_process_wait(t2, 100000000LL);
    *((char **)t1) = &&LAB12;
    goto LAB1;

LAB12:    xsi_set_current_line(81, ng0);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 1144);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(82, ng0);
    t2 = ((char*)((ng11)));
    t3 = (t0 + 1236);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 64);
    xsi_set_current_line(85, ng0);
    t2 = (t0 + 1904);
    xsi_process_wait(t2, 100000000LL);
    *((char **)t1) = &&LAB13;
    goto LAB1;

LAB13:    xsi_set_current_line(86, ng0);
    t2 = ((char*)((ng12)));
    t3 = (t0 + 1144);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(87, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1236);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 64);
    xsi_set_current_line(90, ng0);
    t2 = (t0 + 1904);
    xsi_process_wait(t2, 100000000LL);
    *((char **)t1) = &&LAB14;
    goto LAB1;

LAB14:    xsi_set_current_line(91, ng0);
    t2 = ((char*)((ng13)));
    t3 = (t0 + 1144);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(94, ng0);
    t2 = (t0 + 1904);
    xsi_process_wait(t2, 100000000LL);
    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB15:    xsi_set_current_line(95, ng0);
    t2 = ((char*)((ng14)));
    t3 = (t0 + 1144);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(98, ng0);
    t2 = (t0 + 1904);
    xsi_process_wait(t2, 200000000LL);
    *((char **)t1) = &&LAB16;
    goto LAB1;

LAB16:    xsi_set_current_line(99, ng0);
    t2 = ((char*)((ng15)));
    t3 = (t0 + 1144);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(100, ng0);
    t2 = ((char*)((ng14)));
    t3 = (t0 + 1512);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 7);
    xsi_set_current_line(103, ng0);
    t2 = (t0 + 1904);
    xsi_process_wait(t2, 100000000LL);
    *((char **)t1) = &&LAB17;
    goto LAB1;

LAB17:    xsi_set_current_line(104, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1512);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 7);
    xsi_set_current_line(107, ng0);
    t2 = (t0 + 1904);
    xsi_process_wait(t2, 100000000LL);
    *((char **)t1) = &&LAB18;
    goto LAB1;

LAB18:    xsi_set_current_line(108, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1144);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(109, ng0);
    t2 = ((char*)((ng16)));
    t3 = (t0 + 1236);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 64);
    xsi_set_current_line(110, ng0);
    t2 = ((char*)((ng17)));
    t3 = (t0 + 1328);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(113, ng0);
    t2 = (t0 + 1904);
    xsi_process_wait(t2, 200000000LL);
    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB19:    xsi_set_current_line(114, ng0);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 1144);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(117, ng0);
    t2 = (t0 + 1904);
    xsi_process_wait(t2, 300000000LL);
    *((char **)t1) = &&LAB20;
    goto LAB1;

LAB20:    xsi_set_current_line(118, ng0);
    t2 = ((char*)((ng18)));
    t3 = (t0 + 1052);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 64);
    xsi_set_current_line(121, ng0);
    t2 = (t0 + 1904);
    xsi_process_wait(t2, 200000000LL);
    *((char **)t1) = &&LAB21;
    goto LAB1;

LAB21:    xsi_set_current_line(122, ng0);
    t2 = ((char*)((ng12)));
    t3 = (t0 + 1144);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(123, ng0);
    t2 = ((char*)((ng19)));
    t3 = (t0 + 1236);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 64);
    xsi_set_current_line(124, ng0);
    t2 = ((char*)((ng20)));
    t3 = (t0 + 1420);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 7);
    xsi_set_current_line(127, ng0);
    t2 = (t0 + 1904);
    xsi_process_wait(t2, 100000000LL);
    *((char **)t1) = &&LAB22;
    goto LAB1;

LAB22:    xsi_set_current_line(128, ng0);
    t2 = ((char*)((ng21)));
    t3 = (t0 + 1052);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 64);
    xsi_set_current_line(131, ng0);
    t2 = (t0 + 1904);
    xsi_process_wait(t2, 200000000LL);
    *((char **)t1) = &&LAB23;
    goto LAB1;

LAB23:    xsi_set_current_line(132, ng0);
    t2 = ((char*)((ng22)));
    t3 = (t0 + 1420);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 7);
    xsi_set_current_line(135, ng0);
    t2 = (t0 + 1904);
    xsi_process_wait(t2, 200000000LL);
    *((char **)t1) = &&LAB24;
    goto LAB1;

LAB24:    xsi_set_current_line(136, ng0);
    t2 = ((char*)((ng23)));
    t3 = (t0 + 1420);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 7);
    xsi_set_current_line(139, ng0);
    t2 = (t0 + 1904);
    xsi_process_wait(t2, 200000000LL);
    *((char **)t1) = &&LAB25;
    goto LAB1;

LAB25:    xsi_set_current_line(140, ng0);
    t2 = ((char*)((ng24)));
    t3 = (t0 + 1420);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 7);
    xsi_set_current_line(143, ng0);
    t2 = (t0 + 1904);
    xsi_process_wait(t2, 100000000LL);
    *((char **)t1) = &&LAB26;
    goto LAB1;

LAB26:    xsi_set_current_line(144, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 1144);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(147, ng0);
    t2 = (t0 + 1904);
    xsi_process_wait(t2, 100000000LL);
    *((char **)t1) = &&LAB27;
    goto LAB1;

LAB27:    xsi_set_current_line(148, ng0);
    t2 = ((char*)((ng25)));
    t3 = (t0 + 1052);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 64);
    xsi_set_current_line(149, ng0);
    t2 = ((char*)((ng26)));
    t3 = (t0 + 1236);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 64);
    xsi_set_current_line(152, ng0);
    t2 = (t0 + 1904);
    xsi_process_wait(t2, 100000000LL);
    *((char **)t1) = &&LAB28;
    goto LAB1;

LAB28:    xsi_set_current_line(153, ng0);
    t2 = ((char*)((ng27)));
    t3 = (t0 + 1144);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(156, ng0);
    t2 = (t0 + 1904);
    xsi_process_wait(t2, 300000000LL);
    *((char **)t1) = &&LAB29;
    goto LAB1;

LAB29:    xsi_set_current_line(157, ng0);
    t2 = ((char*)((ng28)));
    t3 = (t0 + 1052);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 64);
    xsi_set_current_line(160, ng0);
    t2 = (t0 + 1904);
    xsi_process_wait(t2, 100000000LL);
    *((char **)t1) = &&LAB30;
    goto LAB1;

LAB30:    xsi_set_current_line(161, ng0);
    t2 = ((char*)((ng29)));
    t3 = (t0 + 1052);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 64);
    xsi_set_current_line(162, ng0);
    t2 = ((char*)((ng30)));
    t3 = (t0 + 1236);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 64);
    xsi_set_current_line(165, ng0);
    t2 = (t0 + 1904);
    xsi_process_wait(t2, 100000000LL);
    *((char **)t1) = &&LAB31;
    goto LAB1;

LAB31:    xsi_set_current_line(166, ng0);
    t2 = ((char*)((ng31)));
    t3 = (t0 + 1236);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 64);
    xsi_set_current_line(169, ng0);
    t2 = (t0 + 1904);
    xsi_process_wait(t2, 100000000LL);
    *((char **)t1) = &&LAB32;
    goto LAB1;

LAB32:    xsi_set_current_line(170, ng0);
    t2 = ((char*)((ng32)));
    t3 = (t0 + 1236);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 64);
    xsi_set_current_line(173, ng0);
    t2 = (t0 + 1904);
    xsi_process_wait(t2, 100000000LL);
    *((char **)t1) = &&LAB33;
    goto LAB1;

LAB33:    xsi_set_current_line(174, ng0);
    t2 = ((char*)((ng33)));
    t3 = (t0 + 1052);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 64);
    xsi_set_current_line(175, ng0);
    t2 = ((char*)((ng33)));
    t3 = (t0 + 1236);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 64);
    xsi_set_current_line(178, ng0);
    t2 = (t0 + 1904);
    xsi_process_wait(t2, 200000000LL);
    *((char **)t1) = &&LAB34;
    goto LAB1;

LAB34:    xsi_set_current_line(179, ng0);
    t2 = ((char*)((ng34)));
    t3 = (t0 + 1052);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 64);
    xsi_set_current_line(180, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 1144);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(183, ng0);
    t2 = (t0 + 1904);
    xsi_process_wait(t2, 300000000LL);
    *((char **)t1) = &&LAB35;
    goto LAB1;

LAB35:    xsi_set_current_line(184, ng0);
    t2 = ((char*)((ng35)));
    t3 = (t0 + 1052);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 64);
    xsi_set_current_line(185, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1144);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(186, ng0);
    t2 = ((char*)((ng36)));
    t3 = (t0 + 1236);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 64);
    xsi_set_current_line(187, ng0);
    t2 = ((char*)((ng37)));
    t3 = (t0 + 1328);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    goto LAB1;

}


extern void work_m_00000000001363315561_2094206942_init()
{
	static char *pe[] = {(void *)I46_0};
	xsi_register_didat("work_m_00000000001363315561_2094206942", "isim/_tmp/work/m_00000000001363315561_2094206942.didat");
	xsi_register_executes(pe);
}
