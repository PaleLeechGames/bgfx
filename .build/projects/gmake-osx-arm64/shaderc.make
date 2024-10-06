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

MAKEFILE = shaderc.make

ifeq ($(config),debug32)
  OBJDIR              = ../../osx-arm64/obj/x32/Debug/shaderc
  TARGETDIR           = ../../osx-arm64/bin
  TARGET              = $(TARGETDIR)/shadercDebug.exe
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -D_DEBUG -DBX_CONFIG_DEBUG=1
  INCLUDES           += -I"../../../../bx/include/compat/osx" -I"../../../../bimg/include" -I"../../../include" -I"../../../3rdparty/dxsdk/include" -I"../../../3rdparty/fcpp" -I"../../../3rdparty/glslang/glslang/Public" -I"../../../3rdparty/glslang/glslang/Include" -I"../../../3rdparty/glslang" -I"../../../3rdparty/glsl-optimizer/include" -I"../../../3rdparty/glsl-optimizer/src/glsl" -I"../../../3rdparty/spirv-cross" -I"../../../3rdparty/spirv-tools/include" -I"../../../../bx/include"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -m32 -arch arm64 -Wno-error=unused-command-line-argument -Wno-unused-command-line-argument -Wfatal-errors -Wunused-value -Wundef
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -m32 -arch arm64 -Wno-error=unused-command-line-argument -Wno-unused-command-line-argument -Wfatal-errors -Wunused-value -Wundef
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -m32 -std=c++17 -fno-rtti -fno-exceptions -arch arm64 -Wno-error=unused-command-line-argument -Wno-unused-command-line-argument -Wfatal-errors -Wunused-value -Wundef
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -m32 -arch arm64 -Wno-error=unused-command-line-argument -Wno-unused-command-line-argument -Wfatal-errors -Wunused-value -Wundef
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -m32 -std=c++17 -fno-rtti -fno-exceptions -arch arm64 -Wno-error=unused-command-line-argument -Wno-unused-command-line-argument -Wfatal-errors -Wunused-value -Wundef
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -L"../../osx-arm64/bin" -L"." -m32 -arch arm64
  LIBDEPS            += ../../osx-arm64/bin/libfcppDebug.a ../../osx-arm64/bin/libglslangDebug.a ../../osx-arm64/bin/libglsl-optimizerDebug.a ../../osx-arm64/bin/libspirv-optDebug.a ../../osx-arm64/bin/libspirv-crossDebug.a ../../osx-arm64/bin/libbxDebug.a
  LDDEPS             += ../../osx-arm64/bin/libfcppDebug.a ../../osx-arm64/bin/libglslangDebug.a ../../osx-arm64/bin/libglsl-optimizerDebug.a ../../osx-arm64/bin/libspirv-optDebug.a ../../osx-arm64/bin/libspirv-crossDebug.a ../../osx-arm64/bin/libbxDebug.a
  LDRESP              =
  LIBS               += $(LDDEPS) -framework Cocoa -lpthread
  EXTERNAL_LIBS      +=
  LINKOBJS            = $(OBJECTS)
  LINKCMD             = $(CXX) -o $(TARGET) $(LINKOBJS) $(RESOURCES) $(ARCH) $(ALL_LDFLAGS) $(LIBS)
  OBJRESP             =
  OBJECTS := \
	$(OBJDIR)/src/shader.o \
	$(OBJDIR)/src/shader_dxbc.o \
	$(OBJDIR)/src/shader_spirv.o \
	$(OBJDIR)/src/vertexlayout.o \
	$(OBJDIR)/tools/shaderc/shaderc.o \
	$(OBJDIR)/tools/shaderc/shaderc_glsl.o \
	$(OBJDIR)/tools/shaderc/shaderc_hlsl.o \
	$(OBJDIR)/tools/shaderc/shaderc_metal.o \
	$(OBJDIR)/tools/shaderc/shaderc_pssl.o \
	$(OBJDIR)/tools/shaderc/shaderc_spirv.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),release32)
  OBJDIR              = ../../osx-arm64/obj/x32/Release/shaderc
  TARGETDIR           = ../../osx-arm64/bin
  TARGET              = $(TARGETDIR)/shadercRelease.exe
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -DNDEBUG -DBX_CONFIG_DEBUG=0
  INCLUDES           += -I"../../../../bx/include/compat/osx" -I"../../../../bimg/include" -I"../../../include" -I"../../../3rdparty/dxsdk/include" -I"../../../3rdparty/fcpp" -I"../../../3rdparty/glslang/glslang/Public" -I"../../../3rdparty/glslang/glslang/Include" -I"../../../3rdparty/glslang" -I"../../../3rdparty/glsl-optimizer/include" -I"../../../3rdparty/glsl-optimizer/src/glsl" -I"../../../3rdparty/spirv-cross" -I"../../../3rdparty/spirv-tools/include" -I"../../../../bx/include"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -m32 -arch arm64 -Wno-error=unused-command-line-argument -Wno-unused-command-line-argument -Wfatal-errors -Wunused-value -Wundef
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -m32 -arch arm64 -Wno-error=unused-command-line-argument -Wno-unused-command-line-argument -Wfatal-errors -Wunused-value -Wundef
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -m32 -std=c++17 -fno-rtti -fno-exceptions -arch arm64 -Wno-error=unused-command-line-argument -Wno-unused-command-line-argument -Wfatal-errors -Wunused-value -Wundef
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -m32 -arch arm64 -Wno-error=unused-command-line-argument -Wno-unused-command-line-argument -Wfatal-errors -Wunused-value -Wundef
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -m32 -std=c++17 -fno-rtti -fno-exceptions -arch arm64 -Wno-error=unused-command-line-argument -Wno-unused-command-line-argument -Wfatal-errors -Wunused-value -Wundef
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -L"../../osx-arm64/bin" -L"." -m32 -arch arm64
  LIBDEPS            += ../../osx-arm64/bin/libfcppRelease.a ../../osx-arm64/bin/libglslangRelease.a ../../osx-arm64/bin/libglsl-optimizerRelease.a ../../osx-arm64/bin/libspirv-optRelease.a ../../osx-arm64/bin/libspirv-crossRelease.a ../../osx-arm64/bin/libbxRelease.a
  LDDEPS             += ../../osx-arm64/bin/libfcppRelease.a ../../osx-arm64/bin/libglslangRelease.a ../../osx-arm64/bin/libglsl-optimizerRelease.a ../../osx-arm64/bin/libspirv-optRelease.a ../../osx-arm64/bin/libspirv-crossRelease.a ../../osx-arm64/bin/libbxRelease.a
  LDRESP              =
  LIBS               += $(LDDEPS) -framework Cocoa -lpthread
  EXTERNAL_LIBS      +=
  LINKOBJS            = $(OBJECTS)
  LINKCMD             = $(CXX) -o $(TARGET) $(LINKOBJS) $(RESOURCES) $(ARCH) $(ALL_LDFLAGS) $(LIBS)
  OBJRESP             =
  OBJECTS := \
	$(OBJDIR)/src/shader.o \
	$(OBJDIR)/src/shader_dxbc.o \
	$(OBJDIR)/src/shader_spirv.o \
	$(OBJDIR)/src/vertexlayout.o \
	$(OBJDIR)/tools/shaderc/shaderc.o \
	$(OBJDIR)/tools/shaderc/shaderc_glsl.o \
	$(OBJDIR)/tools/shaderc/shaderc_hlsl.o \
	$(OBJDIR)/tools/shaderc/shaderc_metal.o \
	$(OBJDIR)/tools/shaderc/shaderc_pssl.o \
	$(OBJDIR)/tools/shaderc/shaderc_spirv.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),debug64)
  OBJDIR              = ../../osx-arm64/obj/x64/Debug/shaderc
  TARGETDIR           = ../../osx-arm64/bin
  TARGET              = $(TARGETDIR)/shadercDebug.exe
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -D_DEBUG -DBX_CONFIG_DEBUG=1
  INCLUDES           += -I"../../../../bx/include/compat/osx" -I"../../../../bimg/include" -I"../../../include" -I"../../../3rdparty/dxsdk/include" -I"../../../3rdparty/fcpp" -I"../../../3rdparty/glslang/glslang/Public" -I"../../../3rdparty/glslang/glslang/Include" -I"../../../3rdparty/glslang" -I"../../../3rdparty/glsl-optimizer/include" -I"../../../3rdparty/glsl-optimizer/src/glsl" -I"../../../3rdparty/spirv-cross" -I"../../../3rdparty/spirv-tools/include" -I"../../../../bx/include"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -m64 -arch arm64 -Wno-error=unused-command-line-argument -Wno-unused-command-line-argument -Wfatal-errors -Wunused-value -Wundef
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -m64 -arch arm64 -Wno-error=unused-command-line-argument -Wno-unused-command-line-argument -Wfatal-errors -Wunused-value -Wundef
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -m64 -std=c++17 -fno-rtti -fno-exceptions -arch arm64 -Wno-error=unused-command-line-argument -Wno-unused-command-line-argument -Wfatal-errors -Wunused-value -Wundef
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -m64 -arch arm64 -Wno-error=unused-command-line-argument -Wno-unused-command-line-argument -Wfatal-errors -Wunused-value -Wundef
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -m64 -std=c++17 -fno-rtti -fno-exceptions -arch arm64 -Wno-error=unused-command-line-argument -Wno-unused-command-line-argument -Wfatal-errors -Wunused-value -Wundef
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -L"../../osx-arm64/bin" -L"." -m64 -arch arm64
  LIBDEPS            += ../../osx-arm64/bin/libfcppDebug.a ../../osx-arm64/bin/libglslangDebug.a ../../osx-arm64/bin/libglsl-optimizerDebug.a ../../osx-arm64/bin/libspirv-optDebug.a ../../osx-arm64/bin/libspirv-crossDebug.a ../../osx-arm64/bin/libbxDebug.a
  LDDEPS             += ../../osx-arm64/bin/libfcppDebug.a ../../osx-arm64/bin/libglslangDebug.a ../../osx-arm64/bin/libglsl-optimizerDebug.a ../../osx-arm64/bin/libspirv-optDebug.a ../../osx-arm64/bin/libspirv-crossDebug.a ../../osx-arm64/bin/libbxDebug.a
  LDRESP              =
  LIBS               += $(LDDEPS) -framework Cocoa -lpthread
  EXTERNAL_LIBS      +=
  LINKOBJS            = $(OBJECTS)
  LINKCMD             = $(CXX) -o $(TARGET) $(LINKOBJS) $(RESOURCES) $(ARCH) $(ALL_LDFLAGS) $(LIBS)
  OBJRESP             =
  OBJECTS := \
	$(OBJDIR)/src/shader.o \
	$(OBJDIR)/src/shader_dxbc.o \
	$(OBJDIR)/src/shader_spirv.o \
	$(OBJDIR)/src/vertexlayout.o \
	$(OBJDIR)/tools/shaderc/shaderc.o \
	$(OBJDIR)/tools/shaderc/shaderc_glsl.o \
	$(OBJDIR)/tools/shaderc/shaderc_hlsl.o \
	$(OBJDIR)/tools/shaderc/shaderc_metal.o \
	$(OBJDIR)/tools/shaderc/shaderc_pssl.o \
	$(OBJDIR)/tools/shaderc/shaderc_spirv.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),release64)
  OBJDIR              = ../../osx-arm64/obj/x64/Release/shaderc
  TARGETDIR           = ../../osx-arm64/bin
  TARGET              = $(TARGETDIR)/shadercRelease.exe
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -DNDEBUG -DBX_CONFIG_DEBUG=0
  INCLUDES           += -I"../../../../bx/include/compat/osx" -I"../../../../bimg/include" -I"../../../include" -I"../../../3rdparty/dxsdk/include" -I"../../../3rdparty/fcpp" -I"../../../3rdparty/glslang/glslang/Public" -I"../../../3rdparty/glslang/glslang/Include" -I"../../../3rdparty/glslang" -I"../../../3rdparty/glsl-optimizer/include" -I"../../../3rdparty/glsl-optimizer/src/glsl" -I"../../../3rdparty/spirv-cross" -I"../../../3rdparty/spirv-tools/include" -I"../../../../bx/include"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -m64 -arch arm64 -Wno-error=unused-command-line-argument -Wno-unused-command-line-argument -Wfatal-errors -Wunused-value -Wundef
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -m64 -arch arm64 -Wno-error=unused-command-line-argument -Wno-unused-command-line-argument -Wfatal-errors -Wunused-value -Wundef
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -m64 -std=c++17 -fno-rtti -fno-exceptions -arch arm64 -Wno-error=unused-command-line-argument -Wno-unused-command-line-argument -Wfatal-errors -Wunused-value -Wundef
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -m64 -arch arm64 -Wno-error=unused-command-line-argument -Wno-unused-command-line-argument -Wfatal-errors -Wunused-value -Wundef
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -m64 -std=c++17 -fno-rtti -fno-exceptions -arch arm64 -Wno-error=unused-command-line-argument -Wno-unused-command-line-argument -Wfatal-errors -Wunused-value -Wundef
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -L"../../osx-arm64/bin" -L"." -m64 -arch arm64
  LIBDEPS            += ../../osx-arm64/bin/libfcppRelease.a ../../osx-arm64/bin/libglslangRelease.a ../../osx-arm64/bin/libglsl-optimizerRelease.a ../../osx-arm64/bin/libspirv-optRelease.a ../../osx-arm64/bin/libspirv-crossRelease.a ../../osx-arm64/bin/libbxRelease.a
  LDDEPS             += ../../osx-arm64/bin/libfcppRelease.a ../../osx-arm64/bin/libglslangRelease.a ../../osx-arm64/bin/libglsl-optimizerRelease.a ../../osx-arm64/bin/libspirv-optRelease.a ../../osx-arm64/bin/libspirv-crossRelease.a ../../osx-arm64/bin/libbxRelease.a
  LDRESP              =
  LIBS               += $(LDDEPS) -framework Cocoa -lpthread
  EXTERNAL_LIBS      +=
  LINKOBJS            = $(OBJECTS)
  LINKCMD             = $(CXX) -o $(TARGET) $(LINKOBJS) $(RESOURCES) $(ARCH) $(ALL_LDFLAGS) $(LIBS)
  OBJRESP             =
  OBJECTS := \
	$(OBJDIR)/src/shader.o \
	$(OBJDIR)/src/shader_dxbc.o \
	$(OBJDIR)/src/shader_spirv.o \
	$(OBJDIR)/src/vertexlayout.o \
	$(OBJDIR)/tools/shaderc/shaderc.o \
	$(OBJDIR)/tools/shaderc/shaderc_glsl.o \
	$(OBJDIR)/tools/shaderc/shaderc_hlsl.o \
	$(OBJDIR)/tools/shaderc/shaderc_metal.o \
	$(OBJDIR)/tools/shaderc/shaderc_pssl.o \
	$(OBJDIR)/tools/shaderc/shaderc_spirv.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),debug)
  OBJDIR              = ../../osx-arm64/obj/Debug/shaderc
  TARGETDIR           = ../../osx-arm64/bin
  TARGET              = $(TARGETDIR)/shadercDebug.exe
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -D_DEBUG -DBX_CONFIG_DEBUG=1
  INCLUDES           += -I"../../../../bx/include/compat/osx" -I"../../../../bimg/include" -I"../../../include" -I"../../../3rdparty/dxsdk/include" -I"../../../3rdparty/fcpp" -I"../../../3rdparty/glslang/glslang/Public" -I"../../../3rdparty/glslang/glslang/Include" -I"../../../3rdparty/glslang" -I"../../../3rdparty/glsl-optimizer/include" -I"../../../3rdparty/glsl-optimizer/src/glsl" -I"../../../3rdparty/spirv-cross" -I"../../../3rdparty/spirv-tools/include" -I"../../../../bx/include"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -arch arm64 -Wno-error=unused-command-line-argument -Wno-unused-command-line-argument -Wfatal-errors -Wunused-value -Wundef
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -arch arm64 -Wno-error=unused-command-line-argument -Wno-unused-command-line-argument -Wfatal-errors -Wunused-value -Wundef
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -std=c++17 -fno-rtti -fno-exceptions -arch arm64 -Wno-error=unused-command-line-argument -Wno-unused-command-line-argument -Wfatal-errors -Wunused-value -Wundef
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -arch arm64 -Wno-error=unused-command-line-argument -Wno-unused-command-line-argument -Wfatal-errors -Wunused-value -Wundef
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -std=c++17 -fno-rtti -fno-exceptions -arch arm64 -Wno-error=unused-command-line-argument -Wno-unused-command-line-argument -Wfatal-errors -Wunused-value -Wundef
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -L"../../osx-arm64/bin" -L"." -arch arm64
  LIBDEPS            += ../../osx-arm64/bin/libfcppDebug.a ../../osx-arm64/bin/libglslangDebug.a ../../osx-arm64/bin/libglsl-optimizerDebug.a ../../osx-arm64/bin/libspirv-optDebug.a ../../osx-arm64/bin/libspirv-crossDebug.a ../../osx-arm64/bin/libbxDebug.a
  LDDEPS             += ../../osx-arm64/bin/libfcppDebug.a ../../osx-arm64/bin/libglslangDebug.a ../../osx-arm64/bin/libglsl-optimizerDebug.a ../../osx-arm64/bin/libspirv-optDebug.a ../../osx-arm64/bin/libspirv-crossDebug.a ../../osx-arm64/bin/libbxDebug.a
  LDRESP              =
  LIBS               += $(LDDEPS) -framework Cocoa -lpthread
  EXTERNAL_LIBS      +=
  LINKOBJS            = $(OBJECTS)
  LINKCMD             = $(CXX) -o $(TARGET) $(LINKOBJS) $(RESOURCES) $(ARCH) $(ALL_LDFLAGS) $(LIBS)
  OBJRESP             =
  OBJECTS := \
	$(OBJDIR)/src/shader.o \
	$(OBJDIR)/src/shader_dxbc.o \
	$(OBJDIR)/src/shader_spirv.o \
	$(OBJDIR)/src/vertexlayout.o \
	$(OBJDIR)/tools/shaderc/shaderc.o \
	$(OBJDIR)/tools/shaderc/shaderc_glsl.o \
	$(OBJDIR)/tools/shaderc/shaderc_hlsl.o \
	$(OBJDIR)/tools/shaderc/shaderc_metal.o \
	$(OBJDIR)/tools/shaderc/shaderc_pssl.o \
	$(OBJDIR)/tools/shaderc/shaderc_spirv.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),release)
  OBJDIR              = ../../osx-arm64/obj/Release/shaderc
  TARGETDIR           = ../../osx-arm64/bin
  TARGET              = $(TARGETDIR)/shadercRelease.exe
  DEFINES            += -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_CONSTANT_MACROS -DNDEBUG -DBX_CONFIG_DEBUG=0
  INCLUDES           += -I"../../../../bx/include/compat/osx" -I"../../../../bimg/include" -I"../../../include" -I"../../../3rdparty/dxsdk/include" -I"../../../3rdparty/fcpp" -I"../../../3rdparty/glslang/glslang/Public" -I"../../../3rdparty/glslang/glslang/Include" -I"../../../3rdparty/glslang" -I"../../../3rdparty/glsl-optimizer/include" -I"../../../3rdparty/glsl-optimizer/src/glsl" -I"../../../3rdparty/spirv-cross" -I"../../../3rdparty/spirv-tools/include" -I"../../../../bx/include"
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -arch arm64 -Wno-error=unused-command-line-argument -Wno-unused-command-line-argument -Wfatal-errors -Wunused-value -Wundef
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -arch arm64 -Wno-error=unused-command-line-argument -Wno-unused-command-line-argument -Wfatal-errors -Wunused-value -Wundef
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -std=c++17 -fno-rtti -fno-exceptions -arch arm64 -Wno-error=unused-command-line-argument -Wno-unused-command-line-argument -Wfatal-errors -Wunused-value -Wundef
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -arch arm64 -Wno-error=unused-command-line-argument -Wno-unused-command-line-argument -Wfatal-errors -Wunused-value -Wundef
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -ffast-math -fomit-frame-pointer -g -O3 -std=c++17 -fno-rtti -fno-exceptions -arch arm64 -Wno-error=unused-command-line-argument -Wno-unused-command-line-argument -Wfatal-errors -Wunused-value -Wundef
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -L"../../osx-arm64/bin" -L"." -arch arm64
  LIBDEPS            += ../../osx-arm64/bin/libfcppRelease.a ../../osx-arm64/bin/libglslangRelease.a ../../osx-arm64/bin/libglsl-optimizerRelease.a ../../osx-arm64/bin/libspirv-optRelease.a ../../osx-arm64/bin/libspirv-crossRelease.a ../../osx-arm64/bin/libbxRelease.a
  LDDEPS             += ../../osx-arm64/bin/libfcppRelease.a ../../osx-arm64/bin/libglslangRelease.a ../../osx-arm64/bin/libglsl-optimizerRelease.a ../../osx-arm64/bin/libspirv-optRelease.a ../../osx-arm64/bin/libspirv-crossRelease.a ../../osx-arm64/bin/libbxRelease.a
  LDRESP              =
  LIBS               += $(LDDEPS) -framework Cocoa -lpthread
  EXTERNAL_LIBS      +=
  LINKOBJS            = $(OBJECTS)
  LINKCMD             = $(CXX) -o $(TARGET) $(LINKOBJS) $(RESOURCES) $(ARCH) $(ALL_LDFLAGS) $(LIBS)
  OBJRESP             =
  OBJECTS := \
	$(OBJDIR)/src/shader.o \
	$(OBJDIR)/src/shader_dxbc.o \
	$(OBJDIR)/src/shader_spirv.o \
	$(OBJDIR)/src/vertexlayout.o \
	$(OBJDIR)/tools/shaderc/shaderc.o \
	$(OBJDIR)/tools/shaderc/shaderc_glsl.o \
	$(OBJDIR)/tools/shaderc/shaderc_hlsl.o \
	$(OBJDIR)/tools/shaderc/shaderc_metal.o \
	$(OBJDIR)/tools/shaderc/shaderc_pssl.o \
	$(OBJDIR)/tools/shaderc/shaderc_spirv.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

OBJDIRS := \
	$(OBJDIR) \
	$(OBJDIR)/src \
	$(OBJDIR)/tools/shaderc \

RESOURCES := \

.PHONY: clean prebuild prelink

all: $(OBJDIRS) $(TARGETDIR) prebuild prelink $(TARGET)
	@:

$(TARGET): $(GCH) $(OBJECTS) $(LIBDEPS) $(EXTERNAL_LIBS) $(RESOURCES) $(OBJRESP) $(LDRESP) | $(TARGETDIR) $(OBJDIRS)
	@echo Linking shaderc
	$(SILENT) $(LINKCMD)
	$(POSTBUILDCMDS)

$(TARGETDIR):
	@echo Creating $(TARGETDIR)
	-$(call MKDIR,$(TARGETDIR))

$(OBJDIRS):
	@echo Creating $(@)
	-$(call MKDIR,$@)

clean:
	@echo Cleaning shaderc
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

$(OBJDIR)/src/shader.o: ../../../src/shader.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/src/shader_dxbc.o: ../../../src/shader_dxbc.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/src/shader_spirv.o: ../../../src/shader_spirv.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/src/vertexlayout.o: ../../../src/vertexlayout.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/tools/shaderc/shaderc.o: ../../../tools/shaderc/shaderc.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/tools/shaderc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/tools/shaderc/shaderc_glsl.o: ../../../tools/shaderc/shaderc_glsl.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/tools/shaderc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/tools/shaderc/shaderc_hlsl.o: ../../../tools/shaderc/shaderc_hlsl.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/tools/shaderc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/tools/shaderc/shaderc_metal.o: ../../../tools/shaderc/shaderc_metal.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/tools/shaderc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/tools/shaderc/shaderc_pssl.o: ../../../tools/shaderc/shaderc_pssl.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/tools/shaderc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/tools/shaderc/shaderc_spirv.o: ../../../tools/shaderc/shaderc_spirv.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/tools/shaderc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

-include $(OBJECTS:%.o=%.d)
ifneq (,$(PCH))
  -include $(OBJDIR)/$(notdir $(PCH)).d
  -include $(OBJDIR)/$(notdir $(PCH))_objc.d
endif
