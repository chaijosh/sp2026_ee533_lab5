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

#include "xsi.h"

struct XSI_INFO xsi_info;


int isim_run(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    work_m_00000000000866782574_2073120511_init();
    unisims_ver_m_00000000000084376409_3411452309_init();
    unisims_ver_m_00000000000847167281_1668249201_init();
    unisims_ver_m_00000000003912143520_2316096324_init();
    work_m_00000000002880135112_2796930235_init();
    unisims_ver_m_00000000004137231468_3342441346_init();
    unisims_ver_m_00000000001080104878_0970595058_init();
    work_m_00000000002777969504_3164036856_init();
    work_m_00000000000076151338_3878878879_init();


    xsi_register_tops("work_m_00000000000076151338_3878878879");
    xsi_register_tops("work_m_00000000000866782574_2073120511");


    return xsi_run_simulation(argc, argv);

}
