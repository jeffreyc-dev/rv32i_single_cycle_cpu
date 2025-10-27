ENTRY(_reset)

MEMORY {
  IMEM (rx)  : ORIGIN = 0x00000000, LENGTH = 1K   /*  1 kB IMEM */
  DMEM (rw)  : ORIGIN = 0x80000000, LENGTH = 16K  /* 16 kB DMEM */
}

SECTIONS {
  /* Text section in IMEM */
  .text : {
    KEEP(*(.text.reset))   /* force .reset at the start */
    *(.text*)              /* all other text */
    *(.rodata*)
  } > IMEM

  /* Towers in DMEM */
  .towers : { *(.towers*) } > DMEM

  /* Initialized data in DMEM */
  .data   : { *(.data*)   } > DMEM

  /* Uninitialized data in DMEM */
  .bss    : { *(.bss*)    } > DMEM

  /* Stack top */
  _stack_top = ORIGIN(DMEM) + LENGTH(DMEM);  /* SP = 0x8000_0000 + 0x4000 = 0x8000_4000 */
}
