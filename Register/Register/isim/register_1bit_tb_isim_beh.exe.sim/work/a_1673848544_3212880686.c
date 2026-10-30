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
static const char *ng0 = "/home/ise/Vlsi_lab/Register/register_1bit_tb.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_1673848544_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;

LAB0:    t1 = (t0 + 2824U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 3568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(31, ng0);
    t7 = (10 * 1000LL);
    t2 = (t0 + 2632);
    xsi_process_wait(t2, t7);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(32, ng0);
    t2 = (t0 + 3568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(32, ng0);
    t7 = (10 * 1000LL);
    t2 = (t0 + 2632);
    xsi_process_wait(t2, t7);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_1673848544_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    unsigned char t7;
    int64 t8;
    unsigned char t9;

LAB0:    t1 = (t0 + 3072U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 3632);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(38, ng0);
    t2 = (t0 + 3696);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(38, ng0);
    t2 = (t0 + 3760);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(39, ng0);

LAB6:    t2 = (t0 + 3392);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    t4 = (t0 + 3392);
    *((int *)t4) = 0;
    xsi_set_current_line(39, ng0);
    t8 = (2 * 1000LL);
    t2 = (t0 + 2880);
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

LAB8:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t7 = *((unsigned char *)t3);
    t9 = (t7 == (unsigned char)2);
    if (t9 == 0)
        goto LAB12;

LAB13:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 3632);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(43, ng0);
    t2 = (t0 + 3696);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(43, ng0);
    t2 = (t0 + 3760);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(44, ng0);

LAB16:    t2 = (t0 + 3408);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB17;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    t2 = (t0 + 5701);
    xsi_report(t2, 27U, (unsigned char)2);
    goto LAB13;

LAB14:    t4 = (t0 + 3408);
    *((int *)t4) = 0;
    xsi_set_current_line(44, ng0);
    t8 = (2 * 1000LL);
    t2 = (t0 + 2880);
    xsi_process_wait(t2, t8);

LAB20:    *((char **)t1) = &&LAB21;
    goto LAB1;

LAB15:    t3 = (t0 + 992U);
    t7 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t7 == 1)
        goto LAB14;
    else
        goto LAB16;

LAB17:    goto LAB15;

LAB18:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t7 = *((unsigned char *)t3);
    t9 = (t7 == (unsigned char)3);
    if (t9 == 0)
        goto LAB22;

LAB23:    xsi_set_current_line(48, ng0);
    t2 = (t0 + 3696);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(48, ng0);
    t2 = (t0 + 3760);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(49, ng0);

LAB26:    t2 = (t0 + 3424);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB27;
    goto LAB1;

LAB19:    goto LAB18;

LAB21:    goto LAB19;

LAB22:    t2 = (t0 + 5728);
    xsi_report(t2, 22U, (unsigned char)2);
    goto LAB23;

LAB24:    t4 = (t0 + 3424);
    *((int *)t4) = 0;
    xsi_set_current_line(49, ng0);
    t8 = (2 * 1000LL);
    t2 = (t0 + 2880);
    xsi_process_wait(t2, t8);

LAB30:    *((char **)t1) = &&LAB31;
    goto LAB1;

LAB25:    t3 = (t0 + 992U);
    t7 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t7 == 1)
        goto LAB24;
    else
        goto LAB26;

LAB27:    goto LAB25;

LAB28:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t7 = *((unsigned char *)t3);
    t9 = (t7 == (unsigned char)3);
    if (t9 == 0)
        goto LAB32;

LAB33:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 3696);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(53, ng0);
    t2 = (t0 + 3760);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(54, ng0);

LAB36:    t2 = (t0 + 3440);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB37;
    goto LAB1;

LAB29:    goto LAB28;

LAB31:    goto LAB29;

LAB32:    t2 = (t0 + 5750);
    xsi_report(t2, 37U, (unsigned char)2);
    goto LAB33;

LAB34:    t4 = (t0 + 3440);
    *((int *)t4) = 0;
    xsi_set_current_line(54, ng0);
    t8 = (2 * 1000LL);
    t2 = (t0 + 2880);
    xsi_process_wait(t2, t8);

LAB40:    *((char **)t1) = &&LAB41;
    goto LAB1;

LAB35:    t3 = (t0 + 992U);
    t7 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t7 == 1)
        goto LAB34;
    else
        goto LAB36;

LAB37:    goto LAB35;

LAB38:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t7 = *((unsigned char *)t3);
    t9 = (t7 == (unsigned char)2);
    if (t9 == 0)
        goto LAB42;

LAB43:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 3696);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(58, ng0);
    t2 = (t0 + 3760);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(59, ng0);

LAB46:    t2 = (t0 + 3456);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB47;
    goto LAB1;

LAB39:    goto LAB38;

LAB41:    goto LAB39;

LAB42:    t2 = (t0 + 5787);
    xsi_report(t2, 22U, (unsigned char)2);
    goto LAB43;

LAB44:    t4 = (t0 + 3456);
    *((int *)t4) = 0;
    xsi_set_current_line(59, ng0);
    t8 = (2 * 1000LL);
    t2 = (t0 + 2880);
    xsi_process_wait(t2, t8);

LAB50:    *((char **)t1) = &&LAB51;
    goto LAB1;

LAB45:    t3 = (t0 + 992U);
    t7 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t7 == 1)
        goto LAB44;
    else
        goto LAB46;

LAB47:    goto LAB45;

LAB48:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t7 = *((unsigned char *)t3);
    t9 = (t7 == (unsigned char)2);
    if (t9 == 0)
        goto LAB52;

LAB53:    xsi_set_current_line(63, ng0);
    t2 = (t0 + 3696);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(63, ng0);
    t2 = (t0 + 3760);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(64, ng0);

LAB56:    t2 = (t0 + 3472);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB57;
    goto LAB1;

LAB49:    goto LAB48;

LAB51:    goto LAB49;

LAB52:    t2 = (t0 + 5809);
    xsi_report(t2, 37U, (unsigned char)2);
    goto LAB53;

LAB54:    t4 = (t0 + 3472);
    *((int *)t4) = 0;
    xsi_set_current_line(64, ng0);
    t8 = (2 * 1000LL);
    t2 = (t0 + 2880);
    xsi_process_wait(t2, t8);

LAB60:    *((char **)t1) = &&LAB61;
    goto LAB1;

LAB55:    t3 = (t0 + 992U);
    t7 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t7 == 1)
        goto LAB54;
    else
        goto LAB56;

LAB57:    goto LAB55;

LAB58:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t7 = *((unsigned char *)t3);
    t9 = (t7 == (unsigned char)3);
    if (t9 == 0)
        goto LAB62;

LAB63:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 3632);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(68, ng0);
    t2 = (t0 + 3696);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(68, ng0);
    t2 = (t0 + 3760);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(69, ng0);

LAB66:    t2 = (t0 + 3488);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB67;
    goto LAB1;

LAB59:    goto LAB58;

LAB61:    goto LAB59;

LAB62:    t2 = (t0 + 5846);
    xsi_report(t2, 36U, (unsigned char)2);
    goto LAB63;

LAB64:    t4 = (t0 + 3488);
    *((int *)t4) = 0;
    xsi_set_current_line(69, ng0);
    t8 = (2 * 1000LL);
    t2 = (t0 + 2880);
    xsi_process_wait(t2, t8);

LAB70:    *((char **)t1) = &&LAB71;
    goto LAB1;

LAB65:    t3 = (t0 + 992U);
    t7 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t7 == 1)
        goto LAB64;
    else
        goto LAB66;

LAB67:    goto LAB65;

LAB68:    xsi_set_current_line(70, ng0);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t7 = *((unsigned char *)t3);
    t9 = (t7 == (unsigned char)2);
    if (t9 == 0)
        goto LAB72;

LAB73:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 5915);
    xsi_report(t2, 39U, (unsigned char)0);
    xsi_set_current_line(73, ng0);

LAB76:    *((char **)t1) = &&LAB77;
    goto LAB1;

LAB69:    goto LAB68;

LAB71:    goto LAB69;

LAB72:    t2 = (t0 + 5882);
    xsi_report(t2, 33U, (unsigned char)2);
    goto LAB73;

LAB74:    goto LAB2;

LAB75:    goto LAB74;

LAB77:    goto LAB75;

}


extern void work_a_1673848544_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1673848544_3212880686_p_0,(void *)work_a_1673848544_3212880686_p_1};
	xsi_register_didat("work_a_1673848544_3212880686", "isim/register_1bit_tb_isim_beh.exe.sim/work/a_1673848544_3212880686.didat");
	xsi_register_executes(pe);
}
