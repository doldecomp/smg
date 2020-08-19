INIT_O_FILES := 						            \
	$(BUILD_DIR)/asm/init.o

EXTAB_O_FILES :=                                    \
    $(BUILD_DIR)/asm/extab.o

EXTABINDEX_O_FILES :=                               \
    $(BUILD_DIR)/asm/extabindex.o

TEXT_O_FILES := 						            \
	$(BUILD_DIR)/asm/text1.o                        \
    $(BUILD_DIR)/asm/MSL/MSL_C/MSL_Common_Embedded/Math/Double_precision/e_acos.o   \
    $(BUILD_DIR)/asm/MSL/MSL_C/MSL_Common_Embedded/Math/Double_precision/e_asin.o   \
    $(BUILD_DIR)/asm/MSL/MSL_C/MSL_Common_Embedded/Math/Double_precision/e_atan2.o   \
    $(BUILD_DIR)/asm/MSL/MSL_C/MSL_Common_Embedded/Math/Double_precision/e_fmod.o   \
    $(BUILD_DIR)/asm/MSL/MSL_C/MSL_Common_Embedded/Math/Double_precision/e_log.o   \
    $(BUILD_DIR)/asm/MSL/MSL_C/MSL_Common_Embedded/Math/Double_precision/e_log10.o   \
    $(BUILD_DIR)/asm/MSL/MSL_C/MSL_Common_Embedded/Math/Double_precision/e_pow.o   \
    $(BUILD_DIR)/asm/MSL/MSL_C/MSL_Common_Embedded/Math/Double_precision/e_rem_pio2.o   \
    $(BUILD_DIR)/asm/MSL/MSL_C/MSL_Common_Embedded/Math/Double_precision/k_cos.o   \
    $(BUILD_DIR)/asm/MSL/MSL_C/MSL_Common_Embedded/Math/Double_precision/k_rem_pio2.o   \
    $(BUILD_DIR)/asm/MSL/MSL_C/MSL_Common_Embedded/Math/Double_precision/k_sin.o   \
    $(BUILD_DIR)/asm/MSL/MSL_C/MSL_Common_Embedded/Math/Double_precision/k_tan.o   \
    $(BUILD_DIR)/asm/MSL/MSL_C/MSL_Common_Embedded/Math/Double_precision/s_atan.o   \
    $(BUILD_DIR)/asm/MSL/MSL_C/MSL_Common_Embedded/Math/Double_precision/s_ceil.o   \
    $(BUILD_DIR)/asm/MSL/MSL_C/MSL_Common_Embedded/Math/Double_precision/s_copysign.o   \
    $(BUILD_DIR)/asm/MSL/MSL_C/MSL_Common_Embedded/Math/Double_precision/s_cos.o   \
    $(BUILD_DIR)/asm/MSL/MSL_C/MSL_Common_Embedded/Math/Double_precision/s_floor.o   \
    $(BUILD_DIR)/asm/MSL/MSL_C/MSL_Common_Embedded/Math/Double_precision/s_frexp.o   \
    $(BUILD_DIR)/asm/MSL/MSL_C/MSL_Common_Embedded/Math/Double_precision/s_ldexp.o   \
    $(BUILD_DIR)/asm/MSL/MSL_C/MSL_Common_Embedded/Math/Double_precision/s_sin.o   \
    $(BUILD_DIR)/asm/MSL/MSL_C/MSL_Common_Embedded/Math/Double_precision/s_tan.o   \
    $(BUILD_DIR)/asm/MSL/MSL_C/MSL_Common_Embedded/Math/Double_precision/w_acos.o   \
    $(BUILD_DIR)/asm/MSL/MSL_C/MSL_Common_Embedded/Math/Double_precision/w_asin.o   \
    $(BUILD_DIR)/asm/MSL/MSL_C/MSL_Common_Embedded/Math/Double_precision/w_atan2.o   \
    $(BUILD_DIR)/asm/MSL/MSL_C/MSL_Common_Embedded/Math/Double_precision/w_fmod.o   \
    $(BUILD_DIR)/asm/MSL/MSL_C/MSL_Common_Embedded/Math/Double_precision/w_log10.o   \
    $(BUILD_DIR)/asm/MSL/MSL_C/MSL_Common_Embedded/Math/Double_precision/w_pow.o   \
    $(BUILD_DIR)/asm/MSL/MSL_C/MSL_Common_Embedded/Math/Double_precision/e_sqrt.o   \
    $(BUILD_DIR)/asm/MSL/MSL_C/PPC_EABI/SRC/math_ppc.o   \
    $(BUILD_DIR)/asm/MSL/MSL_C/MSL_Common_Embedded/Math/Double_precision/w_sqrt.o   \
    $(BUILD_DIR)/asm/runtime_libs/debugger/embedded/MetroTRK/Portable/mainloop.o    \
    $(BUILD_DIR)/asm/runtime_libs/debugger/embedded/MetroTRK/Portable/nubevent.o    \
    $(BUILD_DIR)/asm/runtime_libs/debugger/embedded/MetroTRK/Portable/nubinit.o    \
    $(BUILD_DIR)/asm/runtime_libs/debugger/embedded/MetroTRK/Portable/msg.o    \
    $(BUILD_DIR)/asm/runtime_libs/debugger/embedded/MetroTRK/Portable/msgbuf.o    \
    $(BUILD_DIR)/asm/runtime_libs/debugger/embedded/MetroTRK/Portable/serpoll.o    \
    $(BUILD_DIR)/src/runtime_libs/debugger/embedded/MetroTRK/Os/dolphin/usr_put.o \
    $(BUILD_DIR)/asm/runtime_libs/debugger/embedded/MetroTRK/Os/dolphin/usr_put.o \
    $(BUILD_DIR)/asm/runtime_libs/debugger/embedded/MetroTRK/Portable/dispatch.o    \
    $(BUILD_DIR)/asm/runtime_libs/debugger/embedded/MetroTRK/Portable/msghndlr.o    \
    $(BUILD_DIR)/asm/runtime_libs/debugger/embedded/MetroTRK/Portable/support.o    \
    $(BUILD_DIR)/asm/runtime_libs/debugger/embedded/MetroTRK/Portable/mutex_TRK.o  \
    $(BUILD_DIR)/asm/runtime_libs/debugger/embedded/MetroTRK/Portable/notify.o     \
    $(BUILD_DIR)/asm/runtime_libs/debugger/embedded/MetroTRK/Processor/ppc/Generic/flush_cache.o \
    $(BUILD_DIR)/asm/runtime_libs/debugger/embedded/MetroTRK/Portable/mem_TRK.o    \
    $(BUILD_DIR)/asm/runtime_libs/debugger/embedded/MetroTRK/Portable/string_TRK.o \
    $(BUILD_DIR)/asm/runtime_libs/debugger/embedded/MetroTRK/Processor/ppc/Generic/targimpl.o \
    $(BUILD_DIR)/asm/runtime_libs/debugger/embedded/MetroTRK/Processor/ppc/Generic/targsupp.o \
    $(BUILD_DIR)/asm/runtime_libs/debugger/embedded/MetroTRK/Processor/ppc/Generic/mpc_7xx_603e.o \
    $(BUILD_DIR)/asm/runtime_libs/debugger/embedded/MetroTRK/Export/mslsupp.o      \
    $(BUILD_DIR)/asm/runtime_libs/debugger/embedded/MetroTRK/Os/dolphin/dolphin_trk.o  \
    $(BUILD_DIR)/asm/runtime_libs/debugger/embedded/MetroTRK/Portable/main_TRK.o   \
    $(BUILD_DIR)/asm/runtime_libs/debugger/embedded/MetroTRK/Os/dolphin/dolphin_trk_glue.o \
    $(BUILD_DIR)/asm/runtime_libs/debugger/embedded/MetroTRK/Os/dolphin/targcont.o \
    $(BUILD_DIR)/asm/runtime_libs/debugger/embedded/MetroTRK/Os/dolphin/target_options.o   \
    $(BUILD_DIR)/asm/runtime_libs/debugger/embedded/MetroTRK/Os/dolphin/UDP_Stubs.o    \
    $(BUILD_DIR)/asm/runtime_libs/gamedev/cust_connection/cc/exi2/GCN/EXI2_GDEV_GCN/main.o   \
    $(BUILD_DIR)/asm/runtime_libs/gamedev/cust_connection/utils/common/CircleBuffer.o   \
    $(BUILD_DIR)/asm/runtime_libs/gamedev/cust_connection/utils/gc/MWCriticalSection_gc.o  \
    $(BUILD_DIR)/asm/ndev/DebuggerDriver.o  \
    $(BUILD_DIR)/asm/ndev/exi2.o  \

CTORS_O_FILES :=                                    \
    $(BUILD_DIR)/asm/ctors.o

DTORS_O_FILES :=                                    \
    $(BUILD_DIR)/asm/dtors.o

RODATA_O_FILES :=                                   \
    $(BUILD_DIR)/asm/rodata.o

DATA_O_FILES :=                                     \
    $(BUILD_DIR)/asm/data.o

BSS_O_FILES :=                                      \
    $(BUILD_DIR)/asm/bss.o

SDATA_O_FILES :=                                    \
    $(BUILD_DIR)/asm/sdata.o

SDATA2_O_FILES :=                                   \
    $(BUILD_DIR)/asm/sdata2.o

SBSS2_O_FILES :=                                   \
    $(BUILD_DIR)/asm/sbss2.o