/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/ise/Vlsi_Final/cpu_set3/cpu_tb.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;
extern char *STD_STANDARD;

int ieee_p_1242562249_sub_17802405650254020620_1035706684(char *, char *, char *);
unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_1912994691_3553469787_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    int64 t10;
    int64 t11;

LAB0:    t1 = (t0 + 3464U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(32, ng0);

LAB4:    t2 = (t0 + 1832U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (!(t4));
    if (t5 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(36, ng0);

LAB18:    *((char **)t1) = &&LAB19;

LAB1:    return;
LAB5:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 4128);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(33, ng0);
    t2 = (t0 + 2128U);
    t3 = *((char **)t2);
    t10 = *((int64 *)t3);
    t11 = (t10 / 2);
    t2 = (t0 + 3272);
    xsi_process_wait(t2, t11);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB6:;
LAB8:    xsi_set_current_line(34, ng0);
    t2 = (t0 + 4128);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(34, ng0);
    t2 = (t0 + 2128U);
    t3 = *((char **)t2);
    t10 = *((int64 *)t3);
    t11 = (t10 / 2);
    t2 = (t0 + 3272);
    xsi_process_wait(t2, t11);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    goto LAB4;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB16:    goto LAB2;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

}

static void work_a_1912994691_3553469787_p_1(char *t0)
{
    char t47[16];
    char t53[16];
    char t55[16];
    char t62[16];
    char t64[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    unsigned char t7;
    int64 t8;
    unsigned char t9;
    int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned char t14;
    unsigned int t15;
    char *t16;
    char *t17;
    unsigned char t18;
    char *t19;
    int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned char t24;
    unsigned char t25;
    char *t26;
    char *t27;
    int t28;
    char *t29;
    char *t30;
    int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    int t35;
    unsigned char t36;
    char *t37;
    char *t38;
    int t39;
    int t40;
    int t41;
    int t42;
    char *t43;
    int t44;
    char *t45;
    char *t48;
    char *t49;
    char *t50;
    char *t51;
    char *t52;
    char *t54;
    char *t56;
    char *t57;
    int t58;
    unsigned int t59;
    char *t61;
    char *t63;
    char *t65;
    char *t66;
    int t67;
    unsigned int t68;
    unsigned int t69;

LAB0:    t1 = (t0 + 3712U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 4192);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(43, ng0);

LAB6:    t2 = (t0 + 4032);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    t4 = (t0 + 4032);
    *((int *)t4) = 0;
    xsi_set_current_line(44, ng0);
    t8 = (1 * 1000LL);
    t2 = (t0 + 3520);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    t3 = (t0 + 992U);
    t7 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t7 == 1)
        goto LAB4;
    else
        goto LAB6;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 2248U);
    t4 = *((char **)t2);
    t10 = (0 - 0);
    t11 = (t10 * 1);
    t12 = (8U * t11);
    t13 = (0 + t12);
    t2 = (t4 + t13);
    t14 = 1;
    if (8U == 8U)
        goto LAB20;

LAB21:    t14 = 0;

LAB22:    if (t14 == 1)
        goto LAB17;

LAB18:    t9 = (unsigned char)0;

LAB19:    if (t9 == 1)
        goto LAB14;

LAB15:    t7 = (unsigned char)0;

LAB16:    if (t7 == 0)
        goto LAB12;

LAB13:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 4192);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(50, ng0);
    t2 = (t0 + 7360);
    *((int *)t2) = 1;
    t3 = (t0 + 7364);
    *((int *)t3) = 7;
    t10 = 1;
    t20 = 7;

LAB26:    if (t10 <= t20)
        goto LAB27;

LAB29:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 7383);
    xsi_report(t2, 39U, (unsigned char)0);
    xsi_set_current_line(58, ng0);
    t2 = (t0 + 2128U);
    t3 = *((char **)t2);
    t8 = *((int64 *)t3);
    t2 = (t0 + 3520);
    xsi_process_wait(t2, t8);

LAB55:    *((char **)t1) = &&LAB56;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    t37 = (t0 + 7336);
    xsi_report(t37, 24U, (unsigned char)2);
    goto LAB13;

LAB14:    t26 = (t0 + 1672U);
    t27 = *((char **)t26);
    t26 = (t0 + 7120U);
    t28 = ieee_p_1242562249_sub_17802405650254020620_1035706684(IEEE_P_1242562249, t27, t26);
    t29 = (t0 + 2488U);
    t30 = *((char **)t29);
    t31 = (0 - 0);
    t32 = (t31 * 1);
    t33 = (4U * t32);
    t34 = (0 + t33);
    t29 = (t30 + t34);
    t35 = *((int *)t29);
    t36 = (t28 == t35);
    t7 = t36;
    goto LAB16;

LAB17:    t16 = (t0 + 1512U);
    t17 = *((char **)t16);
    t18 = *((unsigned char *)t17);
    t16 = (t0 + 2368U);
    t19 = *((char **)t16);
    t20 = (0 - 0);
    t21 = (t20 * 1);
    t22 = (1U * t21);
    t23 = (0 + t22);
    t16 = (t19 + t23);
    t24 = *((unsigned char *)t16);
    t25 = (t18 == t24);
    t9 = t25;
    goto LAB19;

LAB20:    t15 = 0;

LAB23:    if (t15 < 8U)
        goto LAB24;
    else
        goto LAB22;

LAB24:    t5 = (t3 + t15);
    t6 = (t2 + t15);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB21;

LAB25:    t15 = (t15 + 1);
    goto LAB23;

LAB27:    xsi_set_current_line(51, ng0);

LAB32:    t4 = (t0 + 4048);
    *((int *)t4) = 1;
    *((char **)t1) = &&LAB33;
    goto LAB1;

LAB28:    t2 = (t0 + 7360);
    t10 = *((int *)t2);
    t3 = (t0 + 7364);
    t20 = *((int *)t3);
    if (t10 == t20)
        goto LAB29;

LAB52:    t28 = (t10 + 1);
    t10 = t28;
    t4 = (t0 + 7360);
    *((int *)t4) = t10;
    goto LAB26;

LAB30:    t6 = (t0 + 4048);
    *((int *)t6) = 0;
    xsi_set_current_line(52, ng0);
    t8 = (1 * 1000LL);
    t2 = (t0 + 3520);
    xsi_process_wait(t2, t8);

LAB36:    *((char **)t1) = &&LAB37;
    goto LAB1;

LAB31:    t5 = (t0 + 992U);
    t7 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t5, 0U, 0U);
    if (t7 == 1)
        goto LAB30;
    else
        goto LAB32;

LAB33:    goto LAB31;

LAB34:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 2248U);
    t4 = *((char **)t2);
    t2 = (t0 + 7360);
    t28 = *((int *)t2);
    t31 = (t28 - 0);
    t11 = (t31 * 1);
    xsi_vhdl_check_range_of_index(0, 7, 1, *((int *)t2));
    t12 = (8U * t11);
    t13 = (0 + t12);
    t5 = (t4 + t13);
    t14 = 1;
    if (8U == 8U)
        goto LAB46;

LAB47:    t14 = 0;

LAB48:    if (t14 == 1)
        goto LAB43;

LAB44:    t9 = (unsigned char)0;

LAB45:    if (t9 == 1)
        goto LAB40;

LAB41:    t7 = (unsigned char)0;

LAB42:    if (t7 == 0)
        goto LAB38;

LAB39:    goto LAB28;

LAB35:    goto LAB34;

LAB37:    goto LAB35;

LAB38:    t45 = (t0 + 7368);
    t48 = ((STD_STANDARD) + 384);
    t49 = (t0 + 7360);
    t50 = xsi_int_to_mem(*((int *)t49));
    t51 = xsi_string_variable_get_image(t47, t48, t50);
    t54 = ((STD_STANDARD) + 984);
    t56 = (t55 + 0U);
    t57 = (t56 + 0U);
    *((int *)t57) = 1;
    t57 = (t56 + 4U);
    *((int *)t57) = 6;
    t57 = (t56 + 8U);
    *((int *)t57) = 1;
    t58 = (6 - 1);
    t59 = (t58 * 1);
    t59 = (t59 + 1);
    t57 = (t56 + 12U);
    *((unsigned int *)t57) = t59;
    t52 = xsi_base_array_concat(t52, t53, t54, (char)97, t45, t55, (char)97, t51, t47, (char)101);
    t57 = (t0 + 7374);
    t63 = ((STD_STANDARD) + 984);
    t65 = (t64 + 0U);
    t66 = (t65 + 0U);
    *((int *)t66) = 1;
    t66 = (t65 + 4U);
    *((int *)t66) = 9;
    t66 = (t65 + 8U);
    *((int *)t66) = 1;
    t67 = (9 - 1);
    t59 = (t67 * 1);
    t59 = (t59 + 1);
    t66 = (t65 + 12U);
    *((unsigned int *)t66) = t59;
    t61 = xsi_base_array_concat(t61, t62, t63, (char)97, t52, t53, (char)97, t57, t64, (char)101);
    t66 = (t47 + 12U);
    t59 = *((unsigned int *)t66);
    t68 = (6U + t59);
    t69 = (t68 + 9U);
    xsi_report(t61, t69, (unsigned char)2);
    goto LAB39;

LAB40:    t29 = (t0 + 1672U);
    t30 = *((char **)t29);
    t29 = (t0 + 7120U);
    t40 = ieee_p_1242562249_sub_17802405650254020620_1035706684(IEEE_P_1242562249, t30, t29);
    t37 = (t0 + 2488U);
    t38 = *((char **)t37);
    t37 = (t0 + 7360);
    t41 = *((int *)t37);
    t42 = (t41 - 0);
    t32 = (t42 * 1);
    xsi_vhdl_check_range_of_index(0, 7, 1, *((int *)t37));
    t33 = (4U * t32);
    t34 = (0 + t33);
    t43 = (t38 + t34);
    t44 = *((int *)t43);
    t36 = (t40 == t44);
    t7 = t36;
    goto LAB42;

LAB43:    t17 = (t0 + 1512U);
    t19 = *((char **)t17);
    t18 = *((unsigned char *)t19);
    t17 = (t0 + 2368U);
    t26 = *((char **)t17);
    t17 = (t0 + 7360);
    t35 = *((int *)t17);
    t39 = (t35 - 0);
    t21 = (t39 * 1);
    xsi_vhdl_check_range_of_index(0, 7, 1, *((int *)t17));
    t22 = (1U * t21);
    t23 = (0 + t22);
    t27 = (t26 + t23);
    t24 = *((unsigned char *)t27);
    t25 = (t18 == t24);
    t9 = t25;
    goto LAB45;

LAB46:    t15 = 0;

LAB49:    if (t15 < 8U)
        goto LAB50;
    else
        goto LAB48;

LAB50:    t6 = (t3 + t15);
    t16 = (t5 + t15);
    if (*((unsigned char *)t6) != *((unsigned char *)t16))
        goto LAB47;

LAB51:    t15 = (t15 + 1);
    goto LAB49;

LAB53:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 4256);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)1;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(60, ng0);

LAB59:    *((char **)t1) = &&LAB60;
    goto LAB1;

LAB54:    goto LAB53;

LAB56:    goto LAB54;

LAB57:    goto LAB2;

LAB58:    goto LAB57;

LAB60:    goto LAB58;

}


extern void work_a_1912994691_3553469787_init()
{
	static char *pe[] = {(void *)work_a_1912994691_3553469787_p_0,(void *)work_a_1912994691_3553469787_p_1};
	xsi_register_didat("work_a_1912994691_3553469787", "isim/cpu_tb_isim_beh.exe.sim/work/a_1912994691_3553469787.didat");
	xsi_register_executes(pe);
}
