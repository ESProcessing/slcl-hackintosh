DefinitionBlock ("SSDT-USB.aml", "SSDT", 1, "sample", "USBFix", 0x00003000)
{
    Device(_SB.EC)
    {
        Name(_HID, "EC000000")
    }
    
    Device(_SB.USBX)
    {
        Name(_ADR, 0)
        Method (_DSM, 4)
        {
            If (!Arg2) { Return (Buffer() { 0x03 } ) }
            Return (Package()
            {
                // these values from iMac17,1
                "kUSBSleepPortCurrentLimit", 2100,
                "kUSBSleepPowerSupply", 5100,
                "kUSBWakePortCurrentLimit", 2100,
                "kUSBWakePowerSupply", 5100,
            })
        }
    }
    // "USBInjectAllConfiguration" : override settings for USBInjectAll.kext
    Device(UIAC)
    {
        Name(_HID, "UIA00000")
        // "RehabManConFiguration"
        Name(RMCF, Package()
        {
            // XHC overrides for 200-series boards
            
            "8086_a2af", Package()
            {
                "port-count", Buffer() { 0x18, 0, 0, 0}, // Highest port number is SS08 at 0x18
                "ports", Package()
                {   // This Board only has a Interal USB2.0 header at HS09, HS10, the rest are USB3.0 Type-A or C. No USB3.1 gen 2 at all.
                    "HS01", Package() // USB2 device on a USB3 Header, port <01 00 00 00>
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 0x01, 0, 0, 0 },
                    },
                    
                    "HS02", Package() // USB2 device on a USB3 Header, port <02 00 00 00>
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 0x02, 0, 0, 0 },
                    },
                    
                    "HS03", Package() // USB2 device on a USB3 port located at i219 Bottom, port <03 00 00 00>
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 0x03, 0, 0, 0 },
                    },

                    "HS04", Package() // USB2 device on a USB3 port located at i219 Top, port <04 00 00 00>
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 0x04, 0, 0, 0 },
                    },

                    "HS05", Package() // USB2 device on a USB3 port located at PS2 Bottom, port <05 00 00 00>
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 0x05, 0, 0, 0 },
                    },

                    "HS06", Package() // USB2 device on a USB3 port located at PS2 Top, port <06 00 00 00>
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 0x06, 0, 0, 0 },
                    },
                    
                    "HS07", Package() // USB2 device on a USB3 port located at Type-C, port <07 00 00 00>
                    {
                        "UsbConnector", 10,
                        "port", Buffer() { 0x07, 0, 0, 0 },
                    },

                    "HS08", Package() // USB2 device on a USB3 port located m.2 A/E, port <08 00 00 00>
                    {
                        "UsbConnector", 255,
                        "port", Buffer() { 0x08, 0, 0, 0 },
                    },

                    "HS09", Package() // USB2 device on a USB2 Header located at the only USB2 Header, port <09 00 00 00>
                    {
                        "UsbConnector", 0,
                        "port", Buffer() { 0x09, 0, 0, 0 },
                    },

                    "HS10", Package() // USB2 device on a USB2 Header located at the only USB2 Header, port <0a 00 00 00>
                    {
                        "UsbConnector", 0,
                        "port", Buffer() { 0x0a, 0, 0, 0 },
                    },
                    
                    "SS01", Package() // USB3 device on a USB3 Header, port <11 00 00 00>
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 0x11, 0, 0, 0 },
                    },
                    
                    "SS02", Package() // USB3 device on a USB3 Header, port <12 00 00 00>
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 0x12, 0, 0, 0 },
                    },
                    
                    "SS03", Package() // USB3 device on a USB3 port located at i219 Bottom, port <13 00 00 00>
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 0x13, 0, 0, 0 },
                    },
                    
                    "SS04", Package() // USB3 device on a USB3 port located at i219 Top, port <14 00 00 00>
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 0x14, 0, 0, 0 },
                    },
                    
                    "SS05", Package() // USB3 device on a USB3 port located at PS2 Bottom, port <15 00 00 00>
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 0x15, 0, 0, 0 },
                    },

                    "SS06", Package() // USB3 device on a USB3 port located at PS2 Top, port <16 00 00 00>
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 0x16, 0, 0, 0 },
                    },
                    
                    "SS08", Package() // USB3 device on a USB3 port located at Type-C, port <18 00 00 00>
                    {
                        "UsbConnector", 10,
                        "port", Buffer() { 0x18, 0, 0, 0 },
                    },

                },
            },
        })
    }    
}