/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160422-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-KBRD-t470.aml, Tue Aug 25 12:42:00 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000009A4 (2468)
 *     Revision         0x02
 *     Checksum         0x6D
 *     OEM ID           "T460"
 *     OEM Table ID     "KBRD"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160422 (538313762)
 */
DefinitionBlock ("", "SSDT", 2, "T460", "KBRD", 0x00000000)
{
    External (_SB_.PCI0.LPCB.EC__, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.HKEY.MHKQ, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.EC__.HKEY.MLCS, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.EC__.HKEY.MMTS, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.EC__.XQ14, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.EC__.XQ15, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.EC__.XQ16, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.EC__.XQ1F, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.EC__.XQ64, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.EC__.XQ66, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.EC__.XQ67, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.EC__.XQ68, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.EC__.XQ69, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.EC__.XQ6A, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.EC__.XQ74, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.KBD_, DeviceObj)    // (from opcode)

    Scope (\)
    {
        Method (_TTS, 1, NotSerialized)  // _TTS: Transition To State
        {
            If (_OSI ("Darwin"))
            {
                If (And (LEqual (Arg0, Zero), LEqual (\_SB.PCI0.LPCB.EC.LED1, One)))
                {
                    \_SB.PCI0.LPCB.EC.HKEY.MMTS (0x02)
                }
            }
        }
    }

    Scope (\_SB.PCI0.LPCB.EC)
    {
        Name (LED1, Zero)
        Method (_Q6A, 0, NotSerialized)  // _Qxx: EC Query
        {
            If (_OSI ("Darwin"))
            {
                If (LEqual (LED1, Zero))
                {
                    Notify (\_SB.PCI0.LPCB.KBD, 0x0136)
                    Notify (\_SB.PCI0.LPCB.KBD, 0x036B)
                    Notify (\_SB.PCI0.LPCB.KBD, 0x01B6)
                    \_SB.PCI0.LPCB.EC.HKEY.MMTS (0x02)
                    Store (One, LED1)
                }
                Else
                {
                    Notify (\_SB.PCI0.LPCB.KBD, 0x012A)
                    Notify (\_SB.PCI0.LPCB.KBD, 0x036B)
                    Notify (\_SB.PCI0.LPCB.KBD, 0x01AA)
                    \_SB.PCI0.LPCB.EC.HKEY.MMTS (Zero)
                    Store (Zero, LED1)
                }
            }
            Else
            {
                \_SB.PCI0.LPCB.EC.XQ6A ()
            }
        }

        Method (_Q15, 0, NotSerialized)  // _Qxx: EC Query
        {
            If (_OSI ("Darwin"))
            {
                Notify (\_SB.PCI0.LPCB.KBD, 0x0405)
            }
            Else
            {
                \_SB.PCI0.LPCB.EC.XQ15 ()
            }
        }

        Method (_Q14, 0, NotSerialized)  // _Qxx: EC Query
        {
            If (_OSI ("Darwin"))
            {
                Notify (\_SB.PCI0.LPCB.KBD, 0x0406)
            }
            Else
            {
                \_SB.PCI0.LPCB.EC.XQ14 ()
            }
        }

        Method (_Q16, 0, NotSerialized)  // _Qxx: EC Query
        {
            If (_OSI ("Darwin"))
            {
                Notify (\_SB.PCI0.LPCB.KBD, 0x0367)
            }
            Else
            {
                \_SB.PCI0.LPCB.EC.XQ16 ()
            }
        }

        Method (_Q64, 0, NotSerialized)  // _Qxx: EC Query
        {
            If (_OSI ("Darwin"))
            {
                Notify (\_SB.PCI0.LPCB.KBD, 0x0368)
            }
            Else
            {
                \_SB.PCI0.LPCB.EC.XQ64 ()
            }
        }

        Method (_Q66, 0, NotSerialized)  // _Qxx: EC Query
        {
            If (_OSI ("Darwin"))
            {
                Notify (\_SB.PCI0.LPCB.KBD, 0x0369)
            }
            Else
            {
                \_SB.PCI0.LPCB.EC.XQ66 ()
            }
        }

        Method (_Q67, 0, NotSerialized)  // _Qxx: EC Query
        {
            If (_OSI ("Darwin"))
            {
                Notify (\_SB.PCI0.LPCB.KBD, 0x0138)
                Notify (\_SB.PCI0.LPCB.KBD, 0x0339)
                Notify (\_SB.PCI0.LPCB.KBD, 0x01B8)
            }
            Else
            {
                \_SB.PCI0.LPCB.EC.XQ67 ()
            }
        }

        Method (_Q68, 0, NotSerialized)  // _Qxx: EC Query
        {
            If (_OSI ("Darwin"))
            {
                Notify (\_SB.PCI0.LPCB.KBD, 0x011D)
                Notify (\_SB.PCI0.LPCB.KBD, 0x0448)
                Notify (\_SB.PCI0.LPCB.KBD, 0x019D)
            }
            Else
            {
                \_SB.PCI0.LPCB.EC.XQ68 ()
            }
        }

        Method (_Q69, 0, NotSerialized)  // _Qxx: EC Query
        {
            If (_OSI ("Darwin"))
            {
                Notify (\_SB.PCI0.LPCB.KBD, 0x036A)
            }
            Else
            {
                \_SB.PCI0.LPCB.EC.XQ69 ()
            }
        }

        Name (LED2, Zero)
        Method (_Q1F, 0, NotSerialized)  // _Qxx: EC Query
        {
            If (_OSI ("Darwin"))
            {
                If (LEqual (LED2, Zero))
                {
                    Notify (\_SB.PCI0.LPCB.KBD, 0x0136)
                    Notify (\_SB.PCI0.LPCB.KBD, 0x0367)
                    Notify (\_SB.PCI0.LPCB.KBD, 0x01B6)
                    \_SB.PCI0.LPCB.EC.HKEY.MLCS (One)
                    Store (One, LED2)
                }
                ElseIf (LEqual (LED2, One))
                {
                    Notify (\_SB.PCI0.LPCB.KBD, 0x012A)
                    Notify (\_SB.PCI0.LPCB.KBD, 0x036A)
                    Notify (\_SB.PCI0.LPCB.KBD, 0x01AA)
                    \_SB.PCI0.LPCB.EC.HKEY.MLCS (0x02)
                    Store (0x02, LED2)
                }
                ElseIf (LEqual (LED2, 0x02))
                {
                    Notify (\_SB.PCI0.LPCB.KBD, 0x012A)
                    Notify (\_SB.PCI0.LPCB.KBD, 0x0367)
                    Notify (\_SB.PCI0.LPCB.KBD, 0x01AA)
                    \_SB.PCI0.LPCB.EC.HKEY.MLCS (Zero)
                    Store (Zero, LED2)
                }
                Else
                {
                    \_SB.PCI0.LPCB.EC.XQ1F ()
                }
            }
        }

        Name (LED3, Zero)
        Method (_Q74, 0, NotSerialized)  // _Qxx: EC Query
        {
            If (_OSI ("Darwin"))
            {
                If (LEqual (LED3, Zero))
                {
                    Notify (\_SB.PCI0.LPCB.KBD, 0x012A)
                    Notify (\_SB.PCI0.LPCB.KBD, 0x0369)
                    Notify (\_SB.PCI0.LPCB.KBD, 0x01AA)
                    \_SB.PCI0.LPCB.EC.HKEY.MHKQ (0x02)
                    Store (One, LED3)
                }
                Else
                {
                    Notify (\_SB.PCI0.LPCB.KBD, 0x0136)
                    Notify (\_SB.PCI0.LPCB.KBD, 0x0369)
                    Notify (\_SB.PCI0.LPCB.KBD, 0x01B6)
                    \_SB.PCI0.LPCB.EC.HKEY.MHKQ (Zero)
                    Store (Zero, LED3)
                }
            }
            Else
            {
                \_SB.PCI0.LPCB.EC.XQ74 ()
            }
        }
    }

    Scope (\_SB.PCI0.LPCB.KBD)
    {
        If (_OSI ("Darwin"))
        {
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (LNot (Arg2))
                {
                    Return (Buffer (One)
                    {
                         0x03                                           
                    })
                }

                Return (Package (0x04)
                {
                    "RM,oem-id", 
                    "LENOVO", 
                    "RM,oem-table-id", 
                    "T460"
                })
            }

            Name (RMCF, Package (0x02)
            {
                "Keyboard", 
                Package (0x0A)
                {
                    "ActionSwipeLeft", 
                    "37 d, 21 d, 21 u, 37 u", 
                    "ActionSwipeRight", 
                    "37 d, 1e d, 1e u, 37 u", 
                    "SleepPressTime", 
                    "1500", 
                    "Swap command and option", 
                    ">y", 
                    "Custom PS2 Map", 
                    Package (0x03)
                    {
                        Package (0x00) {}, 
                        "e038=e05b", 
                        "e037=64"
                    }
                }
            })
        }
    }
}

