/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160422-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-SET-STAS.aml, Fri Mar 27 08:41:47 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000042 (66)
 *     Revision         0x01
 *     Checksum         0xAE
 *     OEM ID           "HACK"
 *     OEM Table ID     "SET-STAS"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20161210 (538317328)
 */
DefinitionBlock ("", "SSDT", 1, "HACK", "SET-STAS", 0x00000000)
{
    External (STAS, IntObj)    // (from opcode)

    Scope (_SB)
    {
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            Store (One, STAS)
        }
    }
}

