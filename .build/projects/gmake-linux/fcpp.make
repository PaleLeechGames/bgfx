# GNU Make project makefile autogenerated by GENie

.SUFFIXES:

ifndef config
  config=debug32
endif

ifndef verbose
  SILENT = @
endif

SHELLTYPE := msdos
ifeq (,$(ComSpec)$(COMSPEC))
  SHELLTYPE := posix
endif
ifeq (/bin,$(findstring /bin,$(SHELL)))
  SHELLTYPE := posix
endif
ifeq (/bin,$(findstring /bin,$(MAKESHELL)))
  SHELLTYPE := posix
endif

ifeq (posix,$(SHELLTYPE))
  MKDIR = $(SILENT) mkdir -p "$(1)"
  COPY  = $(SILENT) cp -fR "$(1)" "$(2)"
  RM    = $(SILENT) rm -f "$(1)"
else
  MKDIR = $(SILENT) mkdir "$(subst /,\\,$(1))" 2> nul || exit 0
  COPY  = $(SILENT) copy /Y "$(subst /,\\,$(1))" "$(subst /,\\,$(2))"
  RM    = $(SILENT) del /F "$(subst /,\\,$(1))" 2> nul || exit 0
endif

CC  = gcc
CXX = g++
AR  = ar

ifndef RESCOMP
  ifdef WINDRES
    RESCOMP = $(WINDRES)
  else
    RESCOMP = windres
  endif
endif

MAKEFILE = fcpp.make

ifeq ($(config),debug32)
  OBJDIR              = ../../linux32_gcc/obj/x32/Debug/fcpp
  TARGETDIR           = ../../linux32_gcc/bin
  TARGET              = $(TARGETDIR)/libfcppDebug.a
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -D_DEBUG -DNINCLUDE=64 -DNWORK=65536 -DNBUFF=65536 -DOLD_PREPROCESSOR=0
  INCLUDES           += -I"../../../../bx/include/compat/linux"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -m32 -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op -m32 -Wno-implicit-fallthrough -Wno-incompatible-pointer-types -Wno-parentheses-equality
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -m32 -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op -m32 -Wno-implicit-fallthrough -Wno-incompatible-pointer-types -Wno-parentheses-equality
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -m32 -std=c++17 -fno-rtti -fno-exceptions -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op -m32 -Wno-implicit-fallthrough -Wno-incompatible-pointer-types -Wno-parentheses-equality
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -m32 -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op -m32 -Wno-implicit-fallthrough -Wno-incompatible-pointer-types -Wno-parentheses-equality
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -m32 -std=c++17 -fno-rtti -fno-exceptions -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op -m32 -Wno-implicit-fallthrough -Wno-incompatible-pointer-types -Wno-parentheses-equality
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -L"../../../3rdparty/lib/linux32_gcc" -L"." -m32 -Wl,--gc-sections -Wl,--as-needed
  LIBDEPS            +=
  LDDEPS             +=
  LDRESP              =
  LIBS               += $(LDDEPS) -lrt -ldl
  EXTERNAL_LIBS      +=
  LINKOBJS            = $(OBJECTS)
  LINKCMD             = $(AR)  -rcs $(TARGET)
  OBJRESP             =
  OBJECTS := \
	$(OBJDIR)/3rdparty/fcpp/cpp1.o \
	$(OBJDIR)/3rdparty/fcpp/cpp2.o \
	$(OBJDIR)/3rdparty/fcpp/cpp3.o \
	$(OBJDIR)/3rdparty/fcpp/cpp4.o \
	$(OBJDIR)/3rdparty/fcpp/cpp5.o \
	$(OBJDIR)/3rdparty/fcpp/cpp6.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),release32)
  OBJDIR              = ../../linux32_gcc/obj/x32/Release/fcpp
  TARGETDIR           = ../../linux32_gcc/bin
  TARGET              = $(TARGETDIR)/libfcppRelease.a
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -DNDEBUG -DNINCLUDE=64 -DNWORK=65536 -DNBUFF=65536 -DOLD_PREPROCESSOR=0
  INCLUDES           += -I"../../../../bx/include/compat/linux"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -m32 -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op -m32 -Wno-implicit-fallthrough -Wno-incompatible-pointer-types -Wno-parentheses-equality
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -m32 -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op -m32 -Wno-implicit-fallthrough -Wno-incompatible-pointer-types -Wno-parentheses-equality
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -m32 -std=c++17 -fno-rtti -fno-exceptions -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op -m32 -Wno-implicit-fallthrough -Wno-incompatible-pointer-types -Wno-parentheses-equality
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -m32 -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op -m32 -Wno-implicit-fallthrough -Wno-incompatible-pointer-types -Wno-parentheses-equality
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -m32 -std=c++17 -fno-rtti -fno-exceptions -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op -m32 -Wno-implicit-fallthrough -Wno-incompatible-pointer-types -Wno-parentheses-equality
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -L"../../../3rdparty/lib/linux32_gcc" -L"." -m32 -Wl,--gc-sections -Wl,--as-needed
  LIBDEPS            +=
  LDDEPS             +=
  LDRESP              =
  LIBS               += $(LDDEPS) -lrt -ldl
  EXTERNAL_LIBS      +=
  LINKOBJS            = $(OBJECTS)
  LINKCMD             = $(AR)  -rcs $(TARGET)
  OBJRESP             =
  OBJECTS := \
	$(OBJDIR)/3rdparty/fcpp/cpp1.o \
	$(OBJDIR)/3rdparty/fcpp/cpp2.o \
	$(OBJDIR)/3rdparty/fcpp/cpp3.o \
	$(OBJDIR)/3rdparty/fcpp/cpp4.o \
	$(OBJDIR)/3rdparty/fcpp/cpp5.o \
	$(OBJDIR)/3rdparty/fcpp/cpp6.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),debug64)
  OBJDIR              = ../../linux64_gcc/obj/x64/Debug/fcpp
  TARGETDIR           = ../../linux64_gcc/bin
  TARGET              = $(TARGETDIR)/libfcppDebug.a
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -D_DEBUG -DNINCLUDE=64 -DNWORK=65536 -DNBUFF=65536 -DOLD_PREPROCESSOR=0
  INCLUDES           += -I"../../../../bx/include/compat/linux"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -m64 -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op -m64 -Wno-implicit-fallthrough -Wno-incompatible-pointer-types -Wno-parentheses-equality
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -m64 -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op -m64 -Wno-implicit-fallthrough -Wno-incompatible-pointer-types -Wno-parentheses-equality
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -m64 -std=c++17 -fno-rtti -fno-exceptions -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op -m64 -Wno-implicit-fallthrough -Wno-incompatible-pointer-types -Wno-parentheses-equality
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -m64 -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op -m64 -Wno-implicit-fallthrough -Wno-incompatible-pointer-types -Wno-parentheses-equality
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -m64 -std=c++17 -fno-rtti -fno-exceptions -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op -m64 -Wno-implicit-fallthrough -Wno-incompatible-pointer-types -Wno-parentheses-equality
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -L"../../../3rdparty/lib/linux64_gcc" -L"." -m64 -Wl,--gc-sections -Wl,--as-needed
  LIBDEPS            +=
  LDDEPS             +=
  LDRESP              =
  LIBS               += $(LDDEPS) -lrt -ldl
  EXTERNAL_LIBS      +=
  LINKOBJS            = $(OBJECTS)
  LINKCMD             = $(AR)  -rcs $(TARGET)
  OBJRESP             =
  OBJECTS := \
	$(OBJDIR)/3rdparty/fcpp/cpp1.o \
	$(OBJDIR)/3rdparty/fcpp/cpp2.o \
	$(OBJDIR)/3rdparty/fcpp/cpp3.o \
	$(OBJDIR)/3rdparty/fcpp/cpp4.o \
	$(OBJDIR)/3rdparty/fcpp/cpp5.o \
	$(OBJDIR)/3rdparty/fcpp/cpp6.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),release64)
  OBJDIR              = ../../linux64_gcc/obj/x64/Release/fcpp
  TARGETDIR           = ../../linux64_gcc/bin
  TARGET              = $(TARGETDIR)/libfcppRelease.a
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -DNDEBUG -DNINCLUDE=64 -DNWORK=65536 -DNBUFF=65536 -DOLD_PREPROCESSOR=0
  INCLUDES           += -I"../../../../bx/include/compat/linux"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -m64 -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op -m64 -Wno-implicit-fallthrough -Wno-incompatible-pointer-types -Wno-parentheses-equality
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -m64 -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op -m64 -Wno-implicit-fallthrough -Wno-incompatible-pointer-types -Wno-parentheses-equality
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -m64 -std=c++17 -fno-rtti -fno-exceptions -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op -m64 -Wno-implicit-fallthrough -Wno-incompatible-pointer-types -Wno-parentheses-equality
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -m64 -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op -m64 -Wno-implicit-fallthrough -Wno-incompatible-pointer-types -Wno-parentheses-equality
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -m64 -std=c++17 -fno-rtti -fno-exceptions -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op -m64 -Wno-implicit-fallthrough -Wno-incompatible-pointer-types -Wno-parentheses-equality
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -L"../../../3rdparty/lib/linux64_gcc" -L"." -m64 -Wl,--gc-sections -Wl,--as-needed
  LIBDEPS            +=
  LDDEPS             +=
  LDRESP              =
  LIBS               += $(LDDEPS) -lrt -ldl
  EXTERNAL_LIBS      +=
  LINKOBJS            = $(OBJECTS)
  LINKCMD             = $(AR)  -rcs $(TARGET)
  OBJRESP             =
  OBJECTS := \
	$(OBJDIR)/3rdparty/fcpp/cpp1.o \
	$(OBJDIR)/3rdparty/fcpp/cpp2.o \
	$(OBJDIR)/3rdparty/fcpp/cpp3.o \
	$(OBJDIR)/3rdparty/fcpp/cpp4.o \
	$(OBJDIR)/3rdparty/fcpp/cpp5.o \
	$(OBJDIR)/3rdparty/fcpp/cpp6.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),debug)
  OBJDIR              = obj/Debug/fcpp
  TARGETDIR           = ../../../scripts
  TARGET              = $(TARGETDIR)/libfcppDebug.a
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -D_DEBUG -DNINCLUDE=64 -DNWORK=65536 -DNBUFF=65536 -DOLD_PREPROCESSOR=0
  INCLUDES           += -I"../../../../bx/include/compat/linux"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op -Wno-implicit-fallthrough -Wno-incompatible-pointer-types -Wno-parentheses-equality
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op -Wno-implicit-fallthrough -Wno-incompatible-pointer-types -Wno-parentheses-equality
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -std=c++17 -fno-rtti -fno-exceptions -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op -Wno-implicit-fallthrough -Wno-incompatible-pointer-types -Wno-parentheses-equality
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op -Wno-implicit-fallthrough -Wno-incompatible-pointer-types -Wno-parentheses-equality
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -std=c++17 -fno-rtti -fno-exceptions -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op -Wno-implicit-fallthrough -Wno-incompatible-pointer-types -Wno-parentheses-equality
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -L"." -Wl,--gc-sections -Wl,--as-needed
  LIBDEPS            +=
  LDDEPS             +=
  LDRESP              =
  LIBS               += $(LDDEPS) -lrt -ldl
  EXTERNAL_LIBS      +=
  LINKOBJS            = $(OBJECTS)
  LINKCMD             = $(AR)  -rcs $(TARGET)
  OBJRESP             =
  OBJECTS := \
	$(OBJDIR)/3rdparty/fcpp/cpp1.o \
	$(OBJDIR)/3rdparty/fcpp/cpp2.o \
	$(OBJDIR)/3rdparty/fcpp/cpp3.o \
	$(OBJDIR)/3rdparty/fcpp/cpp4.o \
	$(OBJDIR)/3rdparty/fcpp/cpp5.o \
	$(OBJDIR)/3rdparty/fcpp/cpp6.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),release)
  OBJDIR              = obj/Release/fcpp
  TARGETDIR           = ../../../scripts
  TARGET              = $(TARGETDIR)/libfcppRelease.a
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -DNDEBUG -DNINCLUDE=64 -DNWORK=65536 -DNBUFF=65536 -DOLD_PREPROCESSOR=0
  INCLUDES           += -I"../../../../bx/include/compat/linux"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op -Wno-implicit-fallthrough -Wno-incompatible-pointer-types -Wno-parentheses-equality
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op -Wno-implicit-fallthrough -Wno-incompatible-pointer-types -Wno-parentheses-equality
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -std=c++17 -fno-rtti -fno-exceptions -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op -Wno-implicit-fallthrough -Wno-incompatible-pointer-types -Wno-parentheses-equality
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op -Wno-implicit-fallthrough -Wno-incompatible-pointer-types -Wno-parentheses-equality
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -std=c++17 -fno-rtti -fno-exceptions -Wshadow -mfpmath=sse -msse4.2 -Wunused-value -Wundef -Wlogical-op -Wno-implicit-fallthrough -Wno-incompatible-pointer-types -Wno-parentheses-equality
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -L"." -Wl,--gc-sections -Wl,--as-needed
  LIBDEPS            +=
  LDDEPS             +=
  LDRESP              =
  LIBS               += $(LDDEPS) -lrt -ldl
  EXTERNAL_LIBS      +=
  LINKOBJS            = $(OBJECTS)
  LINKCMD             = $(AR)  -rcs $(TARGET)
  OBJRESP             =
  OBJECTS := \
	$(OBJDIR)/3rdparty/fcpp/cpp1.o \
	$(OBJDIR)/3rdparty/fcpp/cpp2.o \
	$(OBJDIR)/3rdparty/fcpp/cpp3.o \
	$(OBJDIR)/3rdparty/fcpp/cpp4.o \
	$(OBJDIR)/3rdparty/fcpp/cpp5.o \
	$(OBJDIR)/3rdparty/fcpp/cpp6.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

OBJDIRS := \
	$(OBJDIR) \
	$(OBJDIR)/3rdparty/fcpp \

RESOURCES := \

.PHONY: clean prebuild prelink

all: $(OBJDIRS) $(TARGETDIR) prebuild prelink $(TARGET)
	@:

$(TARGET): $(GCH) $(OBJECTS) $(LIBDEPS) $(EXTERNAL_LIBS) $(RESOURCES) $(OBJRESP) $(LDRESP) | $(TARGETDIR) $(OBJDIRS)
	@echo Archiving fcpp
ifeq (posix,$(SHELLTYPE))
	$(SILENT) rm -f  $(TARGET)
else
	$(SILENT) if exist $(subst /,\\,$(TARGET)) del $(subst /,\\,$(TARGET))
endif
	$(SILENT) $(LINKCMD) $(LINKOBJS)
	$(POSTBUILDCMDS)

$(TARGETDIR):
	@echo Creating $(TARGETDIR)
	-$(call MKDIR,$(TARGETDIR))

$(OBJDIRS):
	@echo Creating $(@)
	-$(call MKDIR,$@)

clean:
	@echo Cleaning fcpp
ifeq (posix,$(SHELLTYPE))
	$(SILENT) rm -f  $(TARGET)
	$(SILENT) rm -rf $(OBJDIR)
else
	$(SILENT) if exist $(subst /,\\,$(TARGET)) del $(subst /,\\,$(TARGET))
	$(SILENT) if exist $(subst /,\\,$(OBJDIR)) rmdir /s /q $(subst /,\\,$(OBJDIR))
endif

prebuild:
	$(PREBUILDCMDS)

prelink:
	$(PRELINKCMDS)

ifneq (,$(PCH))
$(GCH): $(PCH) $(MAKEFILE) | $(OBJDIR)
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) -x c++-header $(DEFINES) $(INCLUDES) -o "$@" -c "$<"

$(GCH_OBJC): $(PCH) $(MAKEFILE) | $(OBJDIR)
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_OBJCPPFLAGS) -x objective-c++-header $(DEFINES) $(INCLUDES) -o "$@" -c "$<"
endif

ifneq (,$(OBJRESP))
$(OBJRESP): $(OBJECTS) | $(TARGETDIR) $(OBJDIRS)
	$(SILENT) echo $^
	$(SILENT) echo $^ > $@
endif

ifneq (,$(LDRESP))
$(LDRESP): $(LDDEPS) | $(TARGETDIR) $(OBJDIRS)
	$(SILENT) echo $^
	$(SILENT) echo $^ > $@
endif

$(OBJDIR)/3rdparty/fcpp/cpp1.o: ../../../3rdparty/fcpp/cpp1.c $(GCH) $(MAKEFILE) | $(OBJDIR)/3rdparty/fcpp
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/3rdparty/fcpp/cpp2.o: ../../../3rdparty/fcpp/cpp2.c $(GCH) $(MAKEFILE) | $(OBJDIR)/3rdparty/fcpp
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/3rdparty/fcpp/cpp3.o: ../../../3rdparty/fcpp/cpp3.c $(GCH) $(MAKEFILE) | $(OBJDIR)/3rdparty/fcpp
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/3rdparty/fcpp/cpp4.o: ../../../3rdparty/fcpp/cpp4.c $(GCH) $(MAKEFILE) | $(OBJDIR)/3rdparty/fcpp
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/3rdparty/fcpp/cpp5.o: ../../../3rdparty/fcpp/cpp5.c $(GCH) $(MAKEFILE) | $(OBJDIR)/3rdparty/fcpp
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/3rdparty/fcpp/cpp6.o: ../../../3rdparty/fcpp/cpp6.c $(GCH) $(MAKEFILE) | $(OBJDIR)/3rdparty/fcpp
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

-include $(OBJECTS:%.o=%.d)
ifneq (,$(PCH))
  -include $(OBJDIR)/$(notdir $(PCH)).d
  -include $(OBJDIR)/$(notdir $(PCH))_objc.d
endif
