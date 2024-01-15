/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
extern void execute_17(char*, char *);
extern void execute_25(char*, char *);
extern void execute_27(char*, char *);
extern void execute_34(char*, char *);
extern void execute_39(char*, char *);
extern void execute_42(char*, char *);
extern void execute_48(char*, char *);
extern void execute_53(char*, char *);
extern void execute_58(char*, char *);
extern void execute_62(char*, char *);
extern void execute_65(char*, char *);
extern void execute_68(char*, char *);
extern void execute_72(char*, char *);
extern void execute_77(char*, char *);
extern void execute_78(char*, char *);
extern void execute_79(char*, char *);
extern void execute_95(char*, char *);
extern void execute_99(char*, char *);
extern void execute_103(char*, char *);
extern void execute_106(char*, char *);
extern void execute_110(char*, char *);
extern void execute_113(char*, char *);
extern void execute_117(char*, char *);
extern void execute_120(char*, char *);
extern void execute_125(char*, char *);
extern void execute_129(char*, char *);
extern void execute_132(char*, char *);
extern void execute_136(char*, char *);
extern void execute_140(char*, char *);
extern void execute_145(char*, char *);
extern void execute_149(char*, char *);
extern void execute_152(char*, char *);
extern void execute_155(char*, char *);
extern void execute_160(char*, char *);
extern void execute_164(char*, char *);
extern void execute_168(char*, char *);
extern void execute_172(char*, char *);
extern void execute_179(char*, char *);
extern void execute_183(char*, char *);
extern void execute_187(char*, char *);
extern void execute_192(char*, char *);
extern void execute_196(char*, char *);
extern void execute_200(char*, char *);
extern void execute_205(char*, char *);
extern void execute_213(char*, char *);
extern void execute_217(char*, char *);
extern void execute_220(char*, char *);
extern void execute_224(char*, char *);
extern void execute_228(char*, char *);
extern void execute_232(char*, char *);
extern void execute_236(char*, char *);
extern void execute_239(char*, char *);
extern void execute_242(char*, char *);
extern void execute_246(char*, char *);
extern void execute_249(char*, char *);
extern void execute_270(char*, char *);
extern void execute_273(char*, char *);
extern void execute_275(char*, char *);
extern void execute_280(char*, char *);
extern void execute_288(char*, char *);
extern void execute_289(char*, char *);
extern void execute_290(char*, char *);
extern void execute_291(char*, char *);
extern void execute_292(char*, char *);
extern void execute_293(char*, char *);
extern void execute_294(char*, char *);
extern void execute_405(char*, char *);
extern void execute_408(char*, char *);
extern void execute_411(char*, char *);
extern void execute_414(char*, char *);
extern void execute_417(char*, char *);
extern void execute_420(char*, char *);
extern void execute_423(char*, char *);
extern void execute_425(char*, char *);
extern void execute_428(char*, char *);
extern void execute_430(char*, char *);
extern void execute_433(char*, char *);
extern void execute_448(char*, char *);
extern void execute_536(char*, char *);
extern void execute_540(char*, char *);
extern void execute_543(char*, char *);
extern void execute_549(char*, char *);
extern void execute_550(char*, char *);
extern void execute_561(char*, char *);
extern void execute_562(char*, char *);
extern void execute_585(char*, char *);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_34(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_35(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_36(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_38(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_39(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_40(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_41(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_42(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_115(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_116(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_117(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_118(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_119(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_120(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_121(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_122(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_123(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_124(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_125(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_126(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_127(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_128(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_129(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_130(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_131(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_132(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_133(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_134(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_135(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_136(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_137(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_138(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_139(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_140(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_141(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_142(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_143(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_144(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_145(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_146(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_147(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_148(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_149(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_150(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_151(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_152(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_153(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_154(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_155(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_156(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_172(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_177(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_183(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_192(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_198(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_201(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_208(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_215(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_222(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_229(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_236(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_243(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_250(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_257(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_270(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_277(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_284(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_297(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_304(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_311(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_318(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_331(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_338(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_345(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_352(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_359(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_366(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_373(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_386(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_393(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_400(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_407(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_420(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_469(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_476(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_483(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_490(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_497(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_504(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_511(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_518(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_525(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_532(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_539(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_546(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_553(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_560(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_567(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_574(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_581(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_588(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_595(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_602(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_609(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_616(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_623(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_630(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[194] = {(funcp)execute_17, (funcp)execute_25, (funcp)execute_27, (funcp)execute_34, (funcp)execute_39, (funcp)execute_42, (funcp)execute_48, (funcp)execute_53, (funcp)execute_58, (funcp)execute_62, (funcp)execute_65, (funcp)execute_68, (funcp)execute_72, (funcp)execute_77, (funcp)execute_78, (funcp)execute_79, (funcp)execute_95, (funcp)execute_99, (funcp)execute_103, (funcp)execute_106, (funcp)execute_110, (funcp)execute_113, (funcp)execute_117, (funcp)execute_120, (funcp)execute_125, (funcp)execute_129, (funcp)execute_132, (funcp)execute_136, (funcp)execute_140, (funcp)execute_145, (funcp)execute_149, (funcp)execute_152, (funcp)execute_155, (funcp)execute_160, (funcp)execute_164, (funcp)execute_168, (funcp)execute_172, (funcp)execute_179, (funcp)execute_183, (funcp)execute_187, (funcp)execute_192, (funcp)execute_196, (funcp)execute_200, (funcp)execute_205, (funcp)execute_213, (funcp)execute_217, (funcp)execute_220, (funcp)execute_224, (funcp)execute_228, (funcp)execute_232, (funcp)execute_236, (funcp)execute_239, (funcp)execute_242, (funcp)execute_246, (funcp)execute_249, (funcp)execute_270, (funcp)execute_273, (funcp)execute_275, (funcp)execute_280, (funcp)execute_288, (funcp)execute_289, (funcp)execute_290, (funcp)execute_291, (funcp)execute_292, (funcp)execute_293, (funcp)execute_294, (funcp)execute_405, (funcp)execute_408, (funcp)execute_411, (funcp)execute_414, (funcp)execute_417, (funcp)execute_420, (funcp)execute_423, (funcp)execute_425, (funcp)execute_428, (funcp)execute_430, (funcp)execute_433, (funcp)execute_448, (funcp)execute_536, (funcp)execute_540, (funcp)execute_543, (funcp)execute_549, (funcp)execute_550, (funcp)execute_561, (funcp)execute_562, (funcp)execute_585, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_34, (funcp)transaction_35, (funcp)transaction_36, (funcp)transaction_38, (funcp)transaction_39, (funcp)transaction_40, (funcp)transaction_41, (funcp)transaction_42, (funcp)transaction_115, (funcp)transaction_116, (funcp)transaction_117, (funcp)transaction_118, (funcp)transaction_119, (funcp)transaction_120, (funcp)transaction_121, (funcp)transaction_122, (funcp)transaction_123, (funcp)transaction_124, (funcp)transaction_125, (funcp)transaction_126, (funcp)transaction_127, (funcp)transaction_128, (funcp)transaction_129, (funcp)transaction_130, (funcp)transaction_131, (funcp)transaction_132, (funcp)transaction_133, (funcp)transaction_134, (funcp)transaction_135, (funcp)transaction_136, (funcp)transaction_137, (funcp)transaction_138, (funcp)transaction_139, (funcp)transaction_140, (funcp)transaction_141, (funcp)transaction_142, (funcp)transaction_143, (funcp)transaction_144, (funcp)transaction_145, (funcp)transaction_146, (funcp)transaction_147, (funcp)transaction_148, (funcp)transaction_149, (funcp)transaction_150, (funcp)transaction_151, (funcp)transaction_152, (funcp)transaction_153, (funcp)transaction_154, (funcp)transaction_155, (funcp)transaction_156, (funcp)transaction_172, (funcp)transaction_177, (funcp)transaction_183, (funcp)transaction_192, (funcp)transaction_198, (funcp)transaction_201, (funcp)transaction_208, (funcp)transaction_215, (funcp)transaction_222, (funcp)transaction_229, (funcp)transaction_236, (funcp)transaction_243, (funcp)transaction_250, (funcp)transaction_257, (funcp)transaction_270, (funcp)transaction_277, (funcp)transaction_284, (funcp)transaction_297, (funcp)transaction_304, (funcp)transaction_311, (funcp)transaction_318, (funcp)transaction_331, (funcp)transaction_338, (funcp)transaction_345, (funcp)transaction_352, (funcp)transaction_359, (funcp)transaction_366, (funcp)transaction_373, (funcp)transaction_386, (funcp)transaction_393, (funcp)transaction_400, (funcp)transaction_407, (funcp)transaction_420, (funcp)transaction_469, (funcp)transaction_476, (funcp)transaction_483, (funcp)transaction_490, (funcp)transaction_497, (funcp)transaction_504, (funcp)transaction_511, (funcp)transaction_518, (funcp)transaction_525, (funcp)transaction_532, (funcp)transaction_539, (funcp)transaction_546, (funcp)transaction_553, (funcp)transaction_560, (funcp)transaction_567, (funcp)transaction_574, (funcp)transaction_581, (funcp)transaction_588, (funcp)transaction_595, (funcp)transaction_602, (funcp)transaction_609, (funcp)transaction_616, (funcp)transaction_623, (funcp)transaction_630};
const int NumRelocateId= 194;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/PmodKYPD_func_synth/xsim.reloc",  (void **)funcTab, 194);
	iki_vhdl_file_variable_register(dp + 132896);
	iki_vhdl_file_variable_register(dp + 132952);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/PmodKYPD_func_synth/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/PmodKYPD_func_synth/xsim.reloc");

	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstatiate();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/PmodKYPD_func_synth/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/PmodKYPD_func_synth/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/PmodKYPD_func_synth/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
