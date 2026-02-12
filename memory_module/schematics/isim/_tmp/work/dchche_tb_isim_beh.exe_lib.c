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
    xilinxcorelib_ver_m_00000000003806943309_0175269777_init();
    work_m_00000000004290218603_1559393817_init();
    unisims_ver_m_00000000003257999491_1759035934_init();
    unisims_ver_m_00000000001080104878_0970595058_init();
    work_m_00000000000849304589_1335396947_init();
    work_m_00000000001587135171_4022620267_init();


    xsi_register_tops("work_m_00000000001587135171_4022620267");
    xsi_register_tops("work_m_00000000000866782574_2073120511");


    return xsi_run_simulation(argc, argv);

}
