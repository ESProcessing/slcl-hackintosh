//
// In config ACPI, GPRW to ZPRW
// Find:     47505257 02
// Replace:  58505257 02
//
DefinitionBlock ("", "SSDT", 2, "hack", "GPRW", 0)
{
    External(ZPRW, MethodObj)
    Method (GPRW, 2, NotSerialized)
    {
        If (_OSI ("Darwin"))
        {
            If ((0x6D == Arg0))
            {
                Return (Package ()
                {
                    0x6D, 
                    Zero
                })
            }

            If ((0x0D == Arg0))
            {
                Return (Package ()
                {
                    0x0D, 
                    Zero
                })
            }
        }
        Return (ZPRW (Arg0, Arg1))
    }
}
