#source: tlsbinpic.s
#source: tlsbin.s
#as: --64
#ld: -shared -melf_x86_64
#readelf: -WSsrl
#target: x86_64-*-*

There are 18 section headers, starting at offset 0x[0-9a-f]+:

Section Headers:
  \[Nr\] Name +Type +Address +Off +Size +ES Flg Lk Inf Al
  \[ 0\] +NULL +0+ 0+ 0+ 00 +0 +0 +0
  \[ 1\] .interp +.*
  \[ 2\] .hash +.*
  \[ 3\] .dynsym +.*
  \[ 4\] .dynstr +.*
  \[ 5\] .rela.dyn +.*
  \[ 6\] .rela.plt +.*
  \[ 7\] .plt +.*
  \[ 8\] .text +PROGBITS +0+401000 0+1000 0+22a 00 +AX +0 +0 +4096
  \[ 9\] .data +.*
  \[10\] .tdata +PROGBITS +0+502000 0+2000 0+60 00 WAT +0 +0 +1
  \[11\] .tbss +NOBITS +0+502060 0+2060 0+40 00 WAT +0 +0 +1
  \[12\] .dynamic +DYNAMIC +0+502060 0+2060 0+140 10 +WA +4 +0 +8
  \[13\] .got +PROGBITS +0+5021a0 0+21a0 0+40 08 +WA +0 +0 +8
  \[14\] .bss +.*
  \[15\] .shstrtab +.*
  \[16\] .symtab +.*
  \[17\] .strtab +.*
Key to Flags:
.*
.*
.*

Elf file type is EXEC \(Executable file\)
Entry point 0x40113c
There are 6 program headers, starting at offset [0-9]+

Program Headers:
  Type +Offset +VirtAddr +PhysAddr +FileSiz +MemSiz +Flg Align
  PHDR +0x0+40 0x0+400040 0x0+400040 0x0+150 0x0+150 R E 0x8
  INTERP +0x0+190 0x0+400190 0x0+400190 0x0+f 0x0+f R +0x1
.*Requesting program interpreter.*
  LOAD +0x0+ 0x0+400000 0x0+400000 0x0+122a 0x0+122a R E 0x100000
  LOAD +0x0+2000 0x0+502000 0x0+502000 0x0+1e0 0x0+1e0 RW  0x100000
  DYNAMIC +0x0+2060 0x0+502060 0x0+502060 0x0+140 0x0+140 RW  0x8
  TLS +0x0+2000 0x0+502000 0x0+502000 0x0+60 0x0+a0 R +0x1

 Section to Segment mapping:
  Segment Sections...
   00 *
   01 +.interp *
   02 +.interp .hash .dynsym .dynstr .rela.dyn .rela.plt .plt .text *
   03 +.tdata .tbss .dynamic .got *
   04 +.tbss .dynamic *
   05 +.tdata .tbss *

Relocation section '.rela.dyn' at offset 0x358 contains 4 entries:
 +Offset +Info +Type +Symbol's Value  Symbol's Name \+ Addend
0+5021c0  0+100000012 R_X86_64_TPOFF64 +0+ sG5 \+ 0
0+5021c8  0+300000012 R_X86_64_TPOFF64 +0+ sG2 \+ 0
0+5021d0  0+600000012 R_X86_64_TPOFF64 +0+ sG6 \+ 0
0+5021d8  0+700000012 R_X86_64_TPOFF64 +0+ sG1 \+ 0

Relocation section '.rela.plt' at offset 0x3b8 contains 1 entries:
 +Offset +Info +Type +Symbol's Value  Symbol's Name \+ Addend
0+[0-9a-f]+  0+400000007 R_X86_64_JUMP_SLOT +0+[0-9a-f]+ __tls_get_addr \+ 0

Symbol table '.dynsym' contains 11 entries:
 +Num: +Value +Size Type +Bind +Vis +Ndx Name
 +0: 0+ +0 NOTYPE  LOCAL  DEFAULT  UND *
 +1: 0+ +0 TLS +GLOBAL DEFAULT  UND sG5
 +2: 0+502060 +0 OBJECT  GLOBAL DEFAULT  ABS _DYNAMIC
 +3: 0+ +0 TLS +GLOBAL DEFAULT  UND sG2
 +4: 0+[0-9a-f]+ +0 FUNC +GLOBAL DEFAULT  UND __tls_get_addr
 +5: 0+[0-9a-f]+ +0 NOTYPE  GLOBAL DEFAULT  ABS __bss_start
 +6: 0+ +0 TLS +GLOBAL DEFAULT  UND sG6
 +7: 0+ +0 TLS +GLOBAL DEFAULT  UND sG1
 +8: 0+[0-9a-f]+ +0 NOTYPE  GLOBAL DEFAULT  ABS _edata
 +9: 0+5021a0 +0 OBJECT  GLOBAL DEFAULT  ABS _GLOBAL_OFFSET_TABLE_
 +10: 0+[0-9a-f]+ +0 NOTYPE  GLOBAL DEFAULT  ABS _end

Symbol table '.symtab' contains 70 entries:
 +Num: +Value +Size Type +Bind +Vis +Ndx Name
 +0: 0+ +0 NOTYPE  LOCAL  DEFAULT  UND *
 +1: [0-9a-f]+ +0 SECTION LOCAL  DEFAULT +1 *
 +2: [0-9a-f]+ +0 SECTION LOCAL  DEFAULT +2 *
 +3: [0-9a-f]+ +0 SECTION LOCAL  DEFAULT +3 *
 +4: [0-9a-f]+ +0 SECTION LOCAL  DEFAULT +4 *
 +5: [0-9a-f]+ +0 SECTION LOCAL  DEFAULT +5 *
 +6: [0-9a-f]+ +0 SECTION LOCAL  DEFAULT +6 *
 +7: [0-9a-f]+ +0 SECTION LOCAL  DEFAULT +7 *
 +8: [0-9a-f]+ +0 SECTION LOCAL  DEFAULT +8 *
 +9: [0-9a-f]+ +0 SECTION LOCAL  DEFAULT +9 *
 +10: [0-9a-f]+ +0 SECTION LOCAL  DEFAULT +10 *
 +11: [0-9a-f]+ +0 SECTION LOCAL  DEFAULT +11 *
 +12: [0-9a-f]+ +0 SECTION LOCAL  DEFAULT +12 *
 +13: [0-9a-f]+ +0 SECTION LOCAL  DEFAULT +13 *
 +14: [0-9a-f]+ +0 SECTION LOCAL  DEFAULT +14 *
 +15: [0-9a-f]+ +0 SECTION LOCAL  DEFAULT +15 *
 +16: [0-9a-f]+ +0 SECTION LOCAL  DEFAULT +16 *
 +17: [0-9a-f]+ +0 SECTION LOCAL  DEFAULT +17 *
 +18: 0+20 +0 TLS +LOCAL  DEFAULT +10 sl1
 +19: 0+24 +0 TLS +LOCAL  DEFAULT +10 sl2
 +20: 0+28 +0 TLS +LOCAL  DEFAULT +10 sl3
 +21: 0+2c +0 TLS +LOCAL  DEFAULT +10 sl4
 +22: 0+30 +0 TLS +LOCAL  DEFAULT +10 sl5
 +23: 0+34 +0 TLS +LOCAL  DEFAULT +10 sl6
 +24: 0+38 +0 TLS +LOCAL  DEFAULT +10 sl7
 +25: 0+3c +0 TLS +LOCAL  DEFAULT +10 sl8
 +26: 0+80 +0 TLS +LOCAL  DEFAULT +11 bl1
 +27: 0+84 +0 TLS +LOCAL  DEFAULT +11 bl2
 +28: 0+88 +0 TLS +LOCAL  DEFAULT +11 bl3
 +29: 0+8c +0 TLS +LOCAL  DEFAULT +11 bl4
 +30: 0+90 +0 TLS +LOCAL  DEFAULT +11 bl5
 +31: 0+94 +0 TLS +LOCAL  DEFAULT +11 bl6
 +32: 0+98 +0 TLS +LOCAL  DEFAULT +11 bl7
 +33: 0+9c +0 TLS +LOCAL  DEFAULT +11 bl8
 +34: 0+1c +0 TLS +GLOBAL DEFAULT +10 sg8
 +35: 0+7c +0 TLS +GLOBAL DEFAULT +11 bg8
 +36: 0+74 +0 TLS +GLOBAL DEFAULT +11 bg6
 +37: 0+ +0 TLS +GLOBAL DEFAULT  UND sG5
 +38: 0+68 +0 TLS +GLOBAL DEFAULT +11 bg3
 +39: 0+502060 +0 OBJECT  GLOBAL DEFAULT  ABS _DYNAMIC
 +40: 0+8 +0 TLS +GLOBAL DEFAULT +10 sg3
 +41: 0+48 +0 TLS +GLOBAL HIDDEN +10 sh3
 +42: 0+ +0 TLS +GLOBAL DEFAULT  UND sG2
 +43: 0+c +0 TLS +GLOBAL DEFAULT +10 sg4
 +44: 0+10 +0 TLS +GLOBAL DEFAULT +10 sg5
 +45: 0+70 +0 TLS +GLOBAL DEFAULT +11 bg5
 +46: [0-9a-f]+ +0 FUNC +GLOBAL DEFAULT  UND __tls_get_addr
 +47: 0+58 +0 TLS +GLOBAL HIDDEN +10 sh7
 +48: 0+5c +0 TLS +GLOBAL HIDDEN +10 sh8
 +49: 0+ +0 TLS +GLOBAL DEFAULT +10 sg1
 +50: 0+40113c +0 FUNC +GLOBAL DEFAULT +8 _start
 +51: 0+4c +0 TLS +GLOBAL HIDDEN +10 sh4
 +52: 0+78 +0 TLS +GLOBAL DEFAULT +11 bg7
 +53: 0+50 +0 TLS +GLOBAL HIDDEN +10 sh5
 +54: [0-9a-f]+ +0 NOTYPE  GLOBAL DEFAULT  ABS __bss_start
 +55: 0+ +0 TLS +GLOBAL DEFAULT  UND sG6
 +56: 0+401000 +0 FUNC +GLOBAL DEFAULT +8 fn2
 +57: 0+4 +0 TLS +GLOBAL DEFAULT +10 sg2
 +58: 0+ +0 TLS +GLOBAL DEFAULT  UND sG1
 +59: 0+40 +0 TLS +GLOBAL HIDDEN +10 sh1
 +60: 0+14 +0 TLS +GLOBAL DEFAULT +10 sg6
 +61: 0+18 +0 TLS +GLOBAL DEFAULT +10 sg7
 +62: [0-9a-f]+ +0 NOTYPE  GLOBAL DEFAULT  ABS _edata
 +63: 0+5021a0 +0 OBJECT  GLOBAL DEFAULT  ABS _GLOBAL_OFFSET_TABLE_
 +64: [0-9a-f]+ +0 NOTYPE  GLOBAL DEFAULT  ABS _end
 +65: 0+44 +0 TLS +GLOBAL HIDDEN +10 sh2
 +66: 0+54 +0 TLS +GLOBAL HIDDEN +10 sh6
 +67: 0+64 +0 TLS +GLOBAL DEFAULT +11 bg2
 +68: 0+60 +0 TLS +GLOBAL DEFAULT +11 bg1
 +69: 0+6c +0 TLS +GLOBAL DEFAULT +11 bg4
