#target extended localhost:3333

#target remote 220.191.3.231:2331
target remote 192.168.1.2:2331
load
set $pc = Reset_Handler
break main

monitor halt
monitor interface SWD
monitor speed 2000
monitor endian little
monitor flash cpuclock = 72000000
monitor flash device = STM32F103C8

#monitor flash download = 1
#monitor flash breakpoints = 1
#load build/freeRTOS.elf
#monitor reg r13 = (0x00000000)
#monitor reg pc = (0x00000004)


#target remote 192.168.1.2:2331
#set mem inaccessible-by-default off
#load
#break ResetHandler
#break main
#continue


#target remote localhost:3333
#target remote 192.168.1.2:2331
#exec-file build/test_led.elf
#load
#monitor reset
#monitor halt
#load
#b main