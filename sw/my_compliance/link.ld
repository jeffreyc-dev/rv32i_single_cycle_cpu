/* link.ld - Barebones linker for any.S */

OUTPUT_ARCH("riscv")

MEMORY {
  IMEM (rx)  : ORIGIN = 0x00000000, LENGTH = 4K   /* 4   kB IMEM */
  DMEM (rw)  : ORIGIN = 0x80000000, LENGTH = 512  /* 0.5 kB DMEM */
}

SECTIONS {
  /* Text section in IMEM */
  .text : {
    *(.text*)              /* all text sections */
    *(.rodata*)            /* any read-only data */
  } > IMEM

  /* Initialized data in DMEM */
  .data : {
    *(.data*)              /* all data sections */
  } > DMEM

  /* Uninitialized data in DMEM */
  .bss : {
    *(.bss*)               /* all BSS sections */
  } > DMEM
}
