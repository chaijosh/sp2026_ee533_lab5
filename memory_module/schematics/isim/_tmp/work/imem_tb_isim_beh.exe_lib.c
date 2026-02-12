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
    xilinxcorelib_ver_m_00000000002071564657_1119991545_init();
    work_m_00000000000288292566_0353654420_init();
    unisims_ver_m_00000000001920171980_1593237687_init();
    work_m_00000000000416775417_0957460994_init();
    work_m_00000000001018869844_2020747732_init();


    xsi_register_tops("work_m_00000000001018869844_2020747732");
    xsi_register_tops("work_m_00000000000866782574_2073120511");


    return xsi_run_simulation(argc, argv);

}
