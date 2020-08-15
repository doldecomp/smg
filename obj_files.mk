INIT_O_FILES := 						            \
	$(BUILD_DIR)/asm/init.o

EXTAB_O_FILES :=                                    \
    $(BUILD_DIR)/asm/extab.o

EXTABINDEX_O_FILES :=                               \
    $(BUILD_DIR)/asm/extabindex.o

TEXT_O_FILES := 						            \
	$(BUILD_DIR)/asm/text1.o                        \
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
    $(BUILD_DIR)/asm/text1_1.o

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