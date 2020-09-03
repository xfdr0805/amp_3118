#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/amp-3118.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/amp-3118.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS
SUB_IMAGE_ADDRESS_COMMAND=--image-address $(SUB_IMAGE_ADDRESS)
else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=src/delay.c src/i2c.c src/main.c src/uart.c src/timer.c src/key.c src/sta311b.c src/adc.c src/irmp.c u8g2/u8g2_bitmap.c u8g2/u8g2_box.c u8g2/u8g2_buffer.c u8g2/u8g2_circle.c u8g2/u8g2_cleardisplay.c u8g2/u8g2_d_memory.c u8g2/u8g2_d_setup.c u8g2/u8g2_font.c u8g2/u8g2_hvline.c u8g2/u8g2_input_value.c u8g2/u8g2_intersection.c u8g2/u8g2_kerning.c u8g2/u8g2_line.c u8g2/u8g2_ll_hvline.c u8g2/u8g2_message.c u8g2/u8g2_polygon.c u8g2/u8g2_selection_list.c u8g2/u8g2_setup.c u8g2/u8log.c u8g2/u8log_u8g2.c u8g2/u8log_u8x8.c u8g2/u8x8_8x8.c u8g2/u8x8_byte.c u8g2/u8x8_cad.c u8g2/u8x8_debounce.c u8g2/u8x8_display.c u8g2/u8x8_gpio.c u8g2/u8x8_input_value.c u8g2/u8x8_message.c u8g2/u8x8_selection_list.c u8g2/u8x8_setup.c u8g2/u8x8_string.c u8g2/u8x8_u16toa.c u8g2/u8x8_u8toa.c u8g2/u8x8_d_ssd1306_128x64_noname.c u8g2/u8g2_fonts.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/src/delay.o ${OBJECTDIR}/src/i2c.o ${OBJECTDIR}/src/main.o ${OBJECTDIR}/src/uart.o ${OBJECTDIR}/src/timer.o ${OBJECTDIR}/src/key.o ${OBJECTDIR}/src/sta311b.o ${OBJECTDIR}/src/adc.o ${OBJECTDIR}/src/irmp.o ${OBJECTDIR}/u8g2/u8g2_bitmap.o ${OBJECTDIR}/u8g2/u8g2_box.o ${OBJECTDIR}/u8g2/u8g2_buffer.o ${OBJECTDIR}/u8g2/u8g2_circle.o ${OBJECTDIR}/u8g2/u8g2_cleardisplay.o ${OBJECTDIR}/u8g2/u8g2_d_memory.o ${OBJECTDIR}/u8g2/u8g2_d_setup.o ${OBJECTDIR}/u8g2/u8g2_font.o ${OBJECTDIR}/u8g2/u8g2_hvline.o ${OBJECTDIR}/u8g2/u8g2_input_value.o ${OBJECTDIR}/u8g2/u8g2_intersection.o ${OBJECTDIR}/u8g2/u8g2_kerning.o ${OBJECTDIR}/u8g2/u8g2_line.o ${OBJECTDIR}/u8g2/u8g2_ll_hvline.o ${OBJECTDIR}/u8g2/u8g2_message.o ${OBJECTDIR}/u8g2/u8g2_polygon.o ${OBJECTDIR}/u8g2/u8g2_selection_list.o ${OBJECTDIR}/u8g2/u8g2_setup.o ${OBJECTDIR}/u8g2/u8log.o ${OBJECTDIR}/u8g2/u8log_u8g2.o ${OBJECTDIR}/u8g2/u8log_u8x8.o ${OBJECTDIR}/u8g2/u8x8_8x8.o ${OBJECTDIR}/u8g2/u8x8_byte.o ${OBJECTDIR}/u8g2/u8x8_cad.o ${OBJECTDIR}/u8g2/u8x8_debounce.o ${OBJECTDIR}/u8g2/u8x8_display.o ${OBJECTDIR}/u8g2/u8x8_gpio.o ${OBJECTDIR}/u8g2/u8x8_input_value.o ${OBJECTDIR}/u8g2/u8x8_message.o ${OBJECTDIR}/u8g2/u8x8_selection_list.o ${OBJECTDIR}/u8g2/u8x8_setup.o ${OBJECTDIR}/u8g2/u8x8_string.o ${OBJECTDIR}/u8g2/u8x8_u16toa.o ${OBJECTDIR}/u8g2/u8x8_u8toa.o ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_128x64_noname.o ${OBJECTDIR}/u8g2/u8g2_fonts.o
POSSIBLE_DEPFILES=${OBJECTDIR}/src/delay.o.d ${OBJECTDIR}/src/i2c.o.d ${OBJECTDIR}/src/main.o.d ${OBJECTDIR}/src/uart.o.d ${OBJECTDIR}/src/timer.o.d ${OBJECTDIR}/src/key.o.d ${OBJECTDIR}/src/sta311b.o.d ${OBJECTDIR}/src/adc.o.d ${OBJECTDIR}/src/irmp.o.d ${OBJECTDIR}/u8g2/u8g2_bitmap.o.d ${OBJECTDIR}/u8g2/u8g2_box.o.d ${OBJECTDIR}/u8g2/u8g2_buffer.o.d ${OBJECTDIR}/u8g2/u8g2_circle.o.d ${OBJECTDIR}/u8g2/u8g2_cleardisplay.o.d ${OBJECTDIR}/u8g2/u8g2_d_memory.o.d ${OBJECTDIR}/u8g2/u8g2_d_setup.o.d ${OBJECTDIR}/u8g2/u8g2_font.o.d ${OBJECTDIR}/u8g2/u8g2_hvline.o.d ${OBJECTDIR}/u8g2/u8g2_input_value.o.d ${OBJECTDIR}/u8g2/u8g2_intersection.o.d ${OBJECTDIR}/u8g2/u8g2_kerning.o.d ${OBJECTDIR}/u8g2/u8g2_line.o.d ${OBJECTDIR}/u8g2/u8g2_ll_hvline.o.d ${OBJECTDIR}/u8g2/u8g2_message.o.d ${OBJECTDIR}/u8g2/u8g2_polygon.o.d ${OBJECTDIR}/u8g2/u8g2_selection_list.o.d ${OBJECTDIR}/u8g2/u8g2_setup.o.d ${OBJECTDIR}/u8g2/u8log.o.d ${OBJECTDIR}/u8g2/u8log_u8g2.o.d ${OBJECTDIR}/u8g2/u8log_u8x8.o.d ${OBJECTDIR}/u8g2/u8x8_8x8.o.d ${OBJECTDIR}/u8g2/u8x8_byte.o.d ${OBJECTDIR}/u8g2/u8x8_cad.o.d ${OBJECTDIR}/u8g2/u8x8_debounce.o.d ${OBJECTDIR}/u8g2/u8x8_display.o.d ${OBJECTDIR}/u8g2/u8x8_gpio.o.d ${OBJECTDIR}/u8g2/u8x8_input_value.o.d ${OBJECTDIR}/u8g2/u8x8_message.o.d ${OBJECTDIR}/u8g2/u8x8_selection_list.o.d ${OBJECTDIR}/u8g2/u8x8_setup.o.d ${OBJECTDIR}/u8g2/u8x8_string.o.d ${OBJECTDIR}/u8g2/u8x8_u16toa.o.d ${OBJECTDIR}/u8g2/u8x8_u8toa.o.d ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_128x64_noname.o.d ${OBJECTDIR}/u8g2/u8g2_fonts.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/src/delay.o ${OBJECTDIR}/src/i2c.o ${OBJECTDIR}/src/main.o ${OBJECTDIR}/src/uart.o ${OBJECTDIR}/src/timer.o ${OBJECTDIR}/src/key.o ${OBJECTDIR}/src/sta311b.o ${OBJECTDIR}/src/adc.o ${OBJECTDIR}/src/irmp.o ${OBJECTDIR}/u8g2/u8g2_bitmap.o ${OBJECTDIR}/u8g2/u8g2_box.o ${OBJECTDIR}/u8g2/u8g2_buffer.o ${OBJECTDIR}/u8g2/u8g2_circle.o ${OBJECTDIR}/u8g2/u8g2_cleardisplay.o ${OBJECTDIR}/u8g2/u8g2_d_memory.o ${OBJECTDIR}/u8g2/u8g2_d_setup.o ${OBJECTDIR}/u8g2/u8g2_font.o ${OBJECTDIR}/u8g2/u8g2_hvline.o ${OBJECTDIR}/u8g2/u8g2_input_value.o ${OBJECTDIR}/u8g2/u8g2_intersection.o ${OBJECTDIR}/u8g2/u8g2_kerning.o ${OBJECTDIR}/u8g2/u8g2_line.o ${OBJECTDIR}/u8g2/u8g2_ll_hvline.o ${OBJECTDIR}/u8g2/u8g2_message.o ${OBJECTDIR}/u8g2/u8g2_polygon.o ${OBJECTDIR}/u8g2/u8g2_selection_list.o ${OBJECTDIR}/u8g2/u8g2_setup.o ${OBJECTDIR}/u8g2/u8log.o ${OBJECTDIR}/u8g2/u8log_u8g2.o ${OBJECTDIR}/u8g2/u8log_u8x8.o ${OBJECTDIR}/u8g2/u8x8_8x8.o ${OBJECTDIR}/u8g2/u8x8_byte.o ${OBJECTDIR}/u8g2/u8x8_cad.o ${OBJECTDIR}/u8g2/u8x8_debounce.o ${OBJECTDIR}/u8g2/u8x8_display.o ${OBJECTDIR}/u8g2/u8x8_gpio.o ${OBJECTDIR}/u8g2/u8x8_input_value.o ${OBJECTDIR}/u8g2/u8x8_message.o ${OBJECTDIR}/u8g2/u8x8_selection_list.o ${OBJECTDIR}/u8g2/u8x8_setup.o ${OBJECTDIR}/u8g2/u8x8_string.o ${OBJECTDIR}/u8g2/u8x8_u16toa.o ${OBJECTDIR}/u8g2/u8x8_u8toa.o ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_128x64_noname.o ${OBJECTDIR}/u8g2/u8g2_fonts.o

# Source Files
SOURCEFILES=src/delay.c src/i2c.c src/main.c src/uart.c src/timer.c src/key.c src/sta311b.c src/adc.c src/irmp.c u8g2/u8g2_bitmap.c u8g2/u8g2_box.c u8g2/u8g2_buffer.c u8g2/u8g2_circle.c u8g2/u8g2_cleardisplay.c u8g2/u8g2_d_memory.c u8g2/u8g2_d_setup.c u8g2/u8g2_font.c u8g2/u8g2_hvline.c u8g2/u8g2_input_value.c u8g2/u8g2_intersection.c u8g2/u8g2_kerning.c u8g2/u8g2_line.c u8g2/u8g2_ll_hvline.c u8g2/u8g2_message.c u8g2/u8g2_polygon.c u8g2/u8g2_selection_list.c u8g2/u8g2_setup.c u8g2/u8log.c u8g2/u8log_u8g2.c u8g2/u8log_u8x8.c u8g2/u8x8_8x8.c u8g2/u8x8_byte.c u8g2/u8x8_cad.c u8g2/u8x8_debounce.c u8g2/u8x8_display.c u8g2/u8x8_gpio.c u8g2/u8x8_input_value.c u8g2/u8x8_message.c u8g2/u8x8_selection_list.c u8g2/u8x8_setup.c u8g2/u8x8_string.c u8g2/u8x8_u16toa.c u8g2/u8x8_u8toa.c u8g2/u8x8_d_ssd1306_128x64_noname.c u8g2/u8g2_fonts.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/amp-3118.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24FJ256GA106
MP_LINKER_FILE_OPTION=,--script=p24FJ256GA106.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/src/delay.o: src/delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/delay.o.d 
	@${RM} ${OBJECTDIR}/src/delay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/delay.c  -o ${OBJECTDIR}/src/delay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/delay.o.d"      -g -D__DEBUG     -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/src/delay.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/i2c.o: src/i2c.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/i2c.o.d 
	@${RM} ${OBJECTDIR}/src/i2c.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/i2c.c  -o ${OBJECTDIR}/src/i2c.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/i2c.o.d"      -g -D__DEBUG     -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/src/i2c.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/main.o: src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/main.o.d 
	@${RM} ${OBJECTDIR}/src/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/main.c  -o ${OBJECTDIR}/src/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/main.o.d"      -g -D__DEBUG     -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/src/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/uart.o: src/uart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/uart.o.d 
	@${RM} ${OBJECTDIR}/src/uart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/uart.c  -o ${OBJECTDIR}/src/uart.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/uart.o.d"      -g -D__DEBUG     -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/src/uart.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/timer.o: src/timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/timer.o.d 
	@${RM} ${OBJECTDIR}/src/timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/timer.c  -o ${OBJECTDIR}/src/timer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/timer.o.d"      -g -D__DEBUG     -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/src/timer.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/key.o: src/key.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/key.o.d 
	@${RM} ${OBJECTDIR}/src/key.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/key.c  -o ${OBJECTDIR}/src/key.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/key.o.d"      -g -D__DEBUG     -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/src/key.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/sta311b.o: src/sta311b.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/sta311b.o.d 
	@${RM} ${OBJECTDIR}/src/sta311b.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/sta311b.c  -o ${OBJECTDIR}/src/sta311b.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/sta311b.o.d"      -g -D__DEBUG     -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/src/sta311b.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/adc.o: src/adc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/adc.o.d 
	@${RM} ${OBJECTDIR}/src/adc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/adc.c  -o ${OBJECTDIR}/src/adc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/adc.o.d"      -g -D__DEBUG     -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/src/adc.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/irmp.o: src/irmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/irmp.o.d 
	@${RM} ${OBJECTDIR}/src/irmp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/irmp.c  -o ${OBJECTDIR}/src/irmp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/irmp.o.d"      -g -D__DEBUG     -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/src/irmp.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8g2_bitmap.o: u8g2/u8g2_bitmap.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_bitmap.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_bitmap.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8g2_bitmap.c  -o ${OBJECTDIR}/u8g2/u8g2_bitmap.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8g2_bitmap.o.d"      -g -D__DEBUG     -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8g2_bitmap.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8g2_box.o: u8g2/u8g2_box.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_box.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_box.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8g2_box.c  -o ${OBJECTDIR}/u8g2/u8g2_box.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8g2_box.o.d"      -g -D__DEBUG     -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8g2_box.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8g2_buffer.o: u8g2/u8g2_buffer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_buffer.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_buffer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8g2_buffer.c  -o ${OBJECTDIR}/u8g2/u8g2_buffer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8g2_buffer.o.d"      -g -D__DEBUG     -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8g2_buffer.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8g2_circle.o: u8g2/u8g2_circle.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_circle.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_circle.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8g2_circle.c  -o ${OBJECTDIR}/u8g2/u8g2_circle.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8g2_circle.o.d"      -g -D__DEBUG     -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8g2_circle.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8g2_cleardisplay.o: u8g2/u8g2_cleardisplay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_cleardisplay.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_cleardisplay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8g2_cleardisplay.c  -o ${OBJECTDIR}/u8g2/u8g2_cleardisplay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8g2_cleardisplay.o.d"      -g -D__DEBUG     -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8g2_cleardisplay.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8g2_d_memory.o: u8g2/u8g2_d_memory.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_d_memory.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_d_memory.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8g2_d_memory.c  -o ${OBJECTDIR}/u8g2/u8g2_d_memory.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8g2_d_memory.o.d"      -g -D__DEBUG     -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8g2_d_memory.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8g2_d_setup.o: u8g2/u8g2_d_setup.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_d_setup.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_d_setup.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8g2_d_setup.c  -o ${OBJECTDIR}/u8g2/u8g2_d_setup.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8g2_d_setup.o.d"      -g -D__DEBUG     -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8g2_d_setup.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8g2_font.o: u8g2/u8g2_font.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_font.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_font.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8g2_font.c  -o ${OBJECTDIR}/u8g2/u8g2_font.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8g2_font.o.d"      -g -D__DEBUG     -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8g2_font.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8g2_hvline.o: u8g2/u8g2_hvline.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_hvline.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_hvline.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8g2_hvline.c  -o ${OBJECTDIR}/u8g2/u8g2_hvline.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8g2_hvline.o.d"      -g -D__DEBUG     -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8g2_hvline.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8g2_input_value.o: u8g2/u8g2_input_value.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_input_value.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_input_value.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8g2_input_value.c  -o ${OBJECTDIR}/u8g2/u8g2_input_value.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8g2_input_value.o.d"      -g -D__DEBUG     -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8g2_input_value.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8g2_intersection.o: u8g2/u8g2_intersection.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_intersection.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_intersection.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8g2_intersection.c  -o ${OBJECTDIR}/u8g2/u8g2_intersection.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8g2_intersection.o.d"      -g -D__DEBUG     -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8g2_intersection.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8g2_kerning.o: u8g2/u8g2_kerning.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_kerning.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_kerning.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8g2_kerning.c  -o ${OBJECTDIR}/u8g2/u8g2_kerning.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8g2_kerning.o.d"      -g -D__DEBUG     -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8g2_kerning.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8g2_line.o: u8g2/u8g2_line.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_line.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_line.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8g2_line.c  -o ${OBJECTDIR}/u8g2/u8g2_line.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8g2_line.o.d"      -g -D__DEBUG     -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8g2_line.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8g2_ll_hvline.o: u8g2/u8g2_ll_hvline.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_ll_hvline.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_ll_hvline.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8g2_ll_hvline.c  -o ${OBJECTDIR}/u8g2/u8g2_ll_hvline.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8g2_ll_hvline.o.d"      -g -D__DEBUG     -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8g2_ll_hvline.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8g2_message.o: u8g2/u8g2_message.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_message.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_message.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8g2_message.c  -o ${OBJECTDIR}/u8g2/u8g2_message.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8g2_message.o.d"      -g -D__DEBUG     -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8g2_message.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8g2_polygon.o: u8g2/u8g2_polygon.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_polygon.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_polygon.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8g2_polygon.c  -o ${OBJECTDIR}/u8g2/u8g2_polygon.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8g2_polygon.o.d"      -g -D__DEBUG     -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8g2_polygon.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8g2_selection_list.o: u8g2/u8g2_selection_list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_selection_list.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_selection_list.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8g2_selection_list.c  -o ${OBJECTDIR}/u8g2/u8g2_selection_list.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8g2_selection_list.o.d"      -g -D__DEBUG     -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8g2_selection_list.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8g2_setup.o: u8g2/u8g2_setup.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_setup.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_setup.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8g2_setup.c  -o ${OBJECTDIR}/u8g2/u8g2_setup.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8g2_setup.o.d"      -g -D__DEBUG     -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8g2_setup.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8log.o: u8g2/u8log.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8log.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8log.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8log.c  -o ${OBJECTDIR}/u8g2/u8log.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8log.o.d"      -g -D__DEBUG     -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8log.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8log_u8g2.o: u8g2/u8log_u8g2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8log_u8g2.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8log_u8g2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8log_u8g2.c  -o ${OBJECTDIR}/u8g2/u8log_u8g2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8log_u8g2.o.d"      -g -D__DEBUG     -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8log_u8g2.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8log_u8x8.o: u8g2/u8log_u8x8.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8log_u8x8.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8log_u8x8.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8log_u8x8.c  -o ${OBJECTDIR}/u8g2/u8log_u8x8.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8log_u8x8.o.d"      -g -D__DEBUG     -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8log_u8x8.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8x8_8x8.o: u8g2/u8x8_8x8.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_8x8.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_8x8.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8x8_8x8.c  -o ${OBJECTDIR}/u8g2/u8x8_8x8.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8x8_8x8.o.d"      -g -D__DEBUG     -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8x8_8x8.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8x8_byte.o: u8g2/u8x8_byte.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_byte.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_byte.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8x8_byte.c  -o ${OBJECTDIR}/u8g2/u8x8_byte.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8x8_byte.o.d"      -g -D__DEBUG     -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8x8_byte.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8x8_cad.o: u8g2/u8x8_cad.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_cad.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_cad.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8x8_cad.c  -o ${OBJECTDIR}/u8g2/u8x8_cad.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8x8_cad.o.d"      -g -D__DEBUG     -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8x8_cad.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8x8_debounce.o: u8g2/u8x8_debounce.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_debounce.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_debounce.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8x8_debounce.c  -o ${OBJECTDIR}/u8g2/u8x8_debounce.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8x8_debounce.o.d"      -g -D__DEBUG     -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8x8_debounce.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8x8_display.o: u8g2/u8x8_display.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_display.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_display.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8x8_display.c  -o ${OBJECTDIR}/u8g2/u8x8_display.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8x8_display.o.d"      -g -D__DEBUG     -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8x8_display.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8x8_gpio.o: u8g2/u8x8_gpio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_gpio.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_gpio.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8x8_gpio.c  -o ${OBJECTDIR}/u8g2/u8x8_gpio.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8x8_gpio.o.d"      -g -D__DEBUG     -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8x8_gpio.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8x8_input_value.o: u8g2/u8x8_input_value.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_input_value.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_input_value.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8x8_input_value.c  -o ${OBJECTDIR}/u8g2/u8x8_input_value.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8x8_input_value.o.d"      -g -D__DEBUG     -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8x8_input_value.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8x8_message.o: u8g2/u8x8_message.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_message.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_message.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8x8_message.c  -o ${OBJECTDIR}/u8g2/u8x8_message.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8x8_message.o.d"      -g -D__DEBUG     -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8x8_message.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8x8_selection_list.o: u8g2/u8x8_selection_list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_selection_list.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_selection_list.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8x8_selection_list.c  -o ${OBJECTDIR}/u8g2/u8x8_selection_list.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8x8_selection_list.o.d"      -g -D__DEBUG     -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8x8_selection_list.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8x8_setup.o: u8g2/u8x8_setup.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_setup.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_setup.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8x8_setup.c  -o ${OBJECTDIR}/u8g2/u8x8_setup.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8x8_setup.o.d"      -g -D__DEBUG     -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8x8_setup.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8x8_string.o: u8g2/u8x8_string.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_string.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_string.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8x8_string.c  -o ${OBJECTDIR}/u8g2/u8x8_string.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8x8_string.o.d"      -g -D__DEBUG     -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8x8_string.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8x8_u16toa.o: u8g2/u8x8_u16toa.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_u16toa.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_u16toa.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8x8_u16toa.c  -o ${OBJECTDIR}/u8g2/u8x8_u16toa.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8x8_u16toa.o.d"      -g -D__DEBUG     -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8x8_u16toa.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8x8_u8toa.o: u8g2/u8x8_u8toa.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_u8toa.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_u8toa.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8x8_u8toa.c  -o ${OBJECTDIR}/u8g2/u8x8_u8toa.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8x8_u8toa.o.d"      -g -D__DEBUG     -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8x8_u8toa.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8x8_d_ssd1306_128x64_noname.o: u8g2/u8x8_d_ssd1306_128x64_noname.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_128x64_noname.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_128x64_noname.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8x8_d_ssd1306_128x64_noname.c  -o ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_128x64_noname.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8x8_d_ssd1306_128x64_noname.o.d"      -g -D__DEBUG     -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8x8_d_ssd1306_128x64_noname.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8g2_fonts.o: u8g2/u8g2_fonts.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_fonts.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_fonts.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8g2_fonts.c  -o ${OBJECTDIR}/u8g2/u8g2_fonts.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8g2_fonts.o.d"      -g -D__DEBUG     -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8g2_fonts.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/src/delay.o: src/delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/delay.o.d 
	@${RM} ${OBJECTDIR}/src/delay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/delay.c  -o ${OBJECTDIR}/src/delay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/delay.o.d"        -g -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/src/delay.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/i2c.o: src/i2c.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/i2c.o.d 
	@${RM} ${OBJECTDIR}/src/i2c.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/i2c.c  -o ${OBJECTDIR}/src/i2c.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/i2c.o.d"        -g -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/src/i2c.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/main.o: src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/main.o.d 
	@${RM} ${OBJECTDIR}/src/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/main.c  -o ${OBJECTDIR}/src/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/main.o.d"        -g -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/src/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/uart.o: src/uart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/uart.o.d 
	@${RM} ${OBJECTDIR}/src/uart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/uart.c  -o ${OBJECTDIR}/src/uart.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/uart.o.d"        -g -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/src/uart.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/timer.o: src/timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/timer.o.d 
	@${RM} ${OBJECTDIR}/src/timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/timer.c  -o ${OBJECTDIR}/src/timer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/timer.o.d"        -g -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/src/timer.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/key.o: src/key.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/key.o.d 
	@${RM} ${OBJECTDIR}/src/key.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/key.c  -o ${OBJECTDIR}/src/key.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/key.o.d"        -g -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/src/key.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/sta311b.o: src/sta311b.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/sta311b.o.d 
	@${RM} ${OBJECTDIR}/src/sta311b.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/sta311b.c  -o ${OBJECTDIR}/src/sta311b.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/sta311b.o.d"        -g -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/src/sta311b.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/adc.o: src/adc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/adc.o.d 
	@${RM} ${OBJECTDIR}/src/adc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/adc.c  -o ${OBJECTDIR}/src/adc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/adc.o.d"        -g -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/src/adc.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/irmp.o: src/irmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/irmp.o.d 
	@${RM} ${OBJECTDIR}/src/irmp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/irmp.c  -o ${OBJECTDIR}/src/irmp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/irmp.o.d"        -g -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/src/irmp.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8g2_bitmap.o: u8g2/u8g2_bitmap.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_bitmap.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_bitmap.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8g2_bitmap.c  -o ${OBJECTDIR}/u8g2/u8g2_bitmap.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8g2_bitmap.o.d"        -g -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8g2_bitmap.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8g2_box.o: u8g2/u8g2_box.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_box.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_box.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8g2_box.c  -o ${OBJECTDIR}/u8g2/u8g2_box.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8g2_box.o.d"        -g -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8g2_box.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8g2_buffer.o: u8g2/u8g2_buffer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_buffer.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_buffer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8g2_buffer.c  -o ${OBJECTDIR}/u8g2/u8g2_buffer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8g2_buffer.o.d"        -g -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8g2_buffer.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8g2_circle.o: u8g2/u8g2_circle.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_circle.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_circle.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8g2_circle.c  -o ${OBJECTDIR}/u8g2/u8g2_circle.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8g2_circle.o.d"        -g -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8g2_circle.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8g2_cleardisplay.o: u8g2/u8g2_cleardisplay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_cleardisplay.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_cleardisplay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8g2_cleardisplay.c  -o ${OBJECTDIR}/u8g2/u8g2_cleardisplay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8g2_cleardisplay.o.d"        -g -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8g2_cleardisplay.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8g2_d_memory.o: u8g2/u8g2_d_memory.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_d_memory.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_d_memory.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8g2_d_memory.c  -o ${OBJECTDIR}/u8g2/u8g2_d_memory.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8g2_d_memory.o.d"        -g -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8g2_d_memory.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8g2_d_setup.o: u8g2/u8g2_d_setup.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_d_setup.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_d_setup.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8g2_d_setup.c  -o ${OBJECTDIR}/u8g2/u8g2_d_setup.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8g2_d_setup.o.d"        -g -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8g2_d_setup.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8g2_font.o: u8g2/u8g2_font.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_font.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_font.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8g2_font.c  -o ${OBJECTDIR}/u8g2/u8g2_font.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8g2_font.o.d"        -g -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8g2_font.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8g2_hvline.o: u8g2/u8g2_hvline.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_hvline.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_hvline.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8g2_hvline.c  -o ${OBJECTDIR}/u8g2/u8g2_hvline.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8g2_hvline.o.d"        -g -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8g2_hvline.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8g2_input_value.o: u8g2/u8g2_input_value.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_input_value.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_input_value.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8g2_input_value.c  -o ${OBJECTDIR}/u8g2/u8g2_input_value.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8g2_input_value.o.d"        -g -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8g2_input_value.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8g2_intersection.o: u8g2/u8g2_intersection.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_intersection.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_intersection.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8g2_intersection.c  -o ${OBJECTDIR}/u8g2/u8g2_intersection.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8g2_intersection.o.d"        -g -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8g2_intersection.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8g2_kerning.o: u8g2/u8g2_kerning.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_kerning.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_kerning.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8g2_kerning.c  -o ${OBJECTDIR}/u8g2/u8g2_kerning.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8g2_kerning.o.d"        -g -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8g2_kerning.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8g2_line.o: u8g2/u8g2_line.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_line.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_line.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8g2_line.c  -o ${OBJECTDIR}/u8g2/u8g2_line.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8g2_line.o.d"        -g -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8g2_line.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8g2_ll_hvline.o: u8g2/u8g2_ll_hvline.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_ll_hvline.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_ll_hvline.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8g2_ll_hvline.c  -o ${OBJECTDIR}/u8g2/u8g2_ll_hvline.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8g2_ll_hvline.o.d"        -g -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8g2_ll_hvline.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8g2_message.o: u8g2/u8g2_message.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_message.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_message.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8g2_message.c  -o ${OBJECTDIR}/u8g2/u8g2_message.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8g2_message.o.d"        -g -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8g2_message.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8g2_polygon.o: u8g2/u8g2_polygon.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_polygon.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_polygon.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8g2_polygon.c  -o ${OBJECTDIR}/u8g2/u8g2_polygon.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8g2_polygon.o.d"        -g -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8g2_polygon.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8g2_selection_list.o: u8g2/u8g2_selection_list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_selection_list.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_selection_list.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8g2_selection_list.c  -o ${OBJECTDIR}/u8g2/u8g2_selection_list.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8g2_selection_list.o.d"        -g -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8g2_selection_list.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8g2_setup.o: u8g2/u8g2_setup.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_setup.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_setup.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8g2_setup.c  -o ${OBJECTDIR}/u8g2/u8g2_setup.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8g2_setup.o.d"        -g -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8g2_setup.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8log.o: u8g2/u8log.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8log.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8log.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8log.c  -o ${OBJECTDIR}/u8g2/u8log.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8log.o.d"        -g -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8log.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8log_u8g2.o: u8g2/u8log_u8g2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8log_u8g2.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8log_u8g2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8log_u8g2.c  -o ${OBJECTDIR}/u8g2/u8log_u8g2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8log_u8g2.o.d"        -g -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8log_u8g2.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8log_u8x8.o: u8g2/u8log_u8x8.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8log_u8x8.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8log_u8x8.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8log_u8x8.c  -o ${OBJECTDIR}/u8g2/u8log_u8x8.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8log_u8x8.o.d"        -g -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8log_u8x8.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8x8_8x8.o: u8g2/u8x8_8x8.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_8x8.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_8x8.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8x8_8x8.c  -o ${OBJECTDIR}/u8g2/u8x8_8x8.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8x8_8x8.o.d"        -g -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8x8_8x8.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8x8_byte.o: u8g2/u8x8_byte.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_byte.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_byte.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8x8_byte.c  -o ${OBJECTDIR}/u8g2/u8x8_byte.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8x8_byte.o.d"        -g -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8x8_byte.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8x8_cad.o: u8g2/u8x8_cad.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_cad.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_cad.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8x8_cad.c  -o ${OBJECTDIR}/u8g2/u8x8_cad.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8x8_cad.o.d"        -g -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8x8_cad.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8x8_debounce.o: u8g2/u8x8_debounce.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_debounce.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_debounce.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8x8_debounce.c  -o ${OBJECTDIR}/u8g2/u8x8_debounce.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8x8_debounce.o.d"        -g -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8x8_debounce.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8x8_display.o: u8g2/u8x8_display.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_display.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_display.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8x8_display.c  -o ${OBJECTDIR}/u8g2/u8x8_display.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8x8_display.o.d"        -g -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8x8_display.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8x8_gpio.o: u8g2/u8x8_gpio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_gpio.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_gpio.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8x8_gpio.c  -o ${OBJECTDIR}/u8g2/u8x8_gpio.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8x8_gpio.o.d"        -g -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8x8_gpio.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8x8_input_value.o: u8g2/u8x8_input_value.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_input_value.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_input_value.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8x8_input_value.c  -o ${OBJECTDIR}/u8g2/u8x8_input_value.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8x8_input_value.o.d"        -g -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8x8_input_value.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8x8_message.o: u8g2/u8x8_message.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_message.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_message.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8x8_message.c  -o ${OBJECTDIR}/u8g2/u8x8_message.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8x8_message.o.d"        -g -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8x8_message.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8x8_selection_list.o: u8g2/u8x8_selection_list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_selection_list.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_selection_list.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8x8_selection_list.c  -o ${OBJECTDIR}/u8g2/u8x8_selection_list.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8x8_selection_list.o.d"        -g -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8x8_selection_list.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8x8_setup.o: u8g2/u8x8_setup.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_setup.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_setup.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8x8_setup.c  -o ${OBJECTDIR}/u8g2/u8x8_setup.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8x8_setup.o.d"        -g -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8x8_setup.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8x8_string.o: u8g2/u8x8_string.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_string.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_string.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8x8_string.c  -o ${OBJECTDIR}/u8g2/u8x8_string.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8x8_string.o.d"        -g -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8x8_string.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8x8_u16toa.o: u8g2/u8x8_u16toa.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_u16toa.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_u16toa.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8x8_u16toa.c  -o ${OBJECTDIR}/u8g2/u8x8_u16toa.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8x8_u16toa.o.d"        -g -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8x8_u16toa.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8x8_u8toa.o: u8g2/u8x8_u8toa.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_u8toa.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_u8toa.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8x8_u8toa.c  -o ${OBJECTDIR}/u8g2/u8x8_u8toa.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8x8_u8toa.o.d"        -g -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8x8_u8toa.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8x8_d_ssd1306_128x64_noname.o: u8g2/u8x8_d_ssd1306_128x64_noname.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_128x64_noname.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_128x64_noname.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8x8_d_ssd1306_128x64_noname.c  -o ${OBJECTDIR}/u8g2/u8x8_d_ssd1306_128x64_noname.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8x8_d_ssd1306_128x64_noname.o.d"        -g -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8x8_d_ssd1306_128x64_noname.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/u8g2/u8g2_fonts.o: u8g2/u8g2_fonts.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/u8g2" 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_fonts.o.d 
	@${RM} ${OBJECTDIR}/u8g2/u8g2_fonts.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  u8g2/u8g2_fonts.c  -o ${OBJECTDIR}/u8g2/u8g2_fonts.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/u8g2/u8g2_fonts.o.d"        -g -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	@${FIXDEPS} "${OBJECTDIR}/u8g2/u8g2_fonts.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/amp-3118.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/amp-3118.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG   -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2"     -Wl,,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/amp-3118.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/amp-3118.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -fast-math -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I"u8g2" -Wl,,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	${MP_CC_DIR}\\xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/amp-3118.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf   -mdfp="${DFP_DIR}/xc16" 
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
