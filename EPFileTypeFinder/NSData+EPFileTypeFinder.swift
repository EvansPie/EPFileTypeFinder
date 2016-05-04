//
//  NSData+EPFileTypeFinder.swift
//  EPFileTypeFinder
//
//  Created by Evangelos Pittas on 31/03/16.
//  Copyright © 2016 EP. All rights reserved.
//

import Foundation

extension NSData {
    func type() -> FileType {
        var c = [UInt8](count: 14, repeatedValue: 0)
        self.getBytes(&c, length: 14)
        
        var tmpStr: String = ""
        
        for i in c {
            let hex = String(i, radix: 16)
            
            tmpStr = tmpStr + hex + " "
        }
        
        //print("HEX: \(tmpStr)")
        
        var ext: FileType = FileType.UNKNOWN
        
        switch (c[0]) {
        case 0x00:
            if c[1] == 0x00 && c[2] == 0x01 && c[3] == 0x00 {
                ext = FileType.ICO
            }
            
        case 0x04:
            if c[1] == 0x22 && c[2] == 0x4D && c[3] == 0x18 {
                ext = FileType.LZ4
            }
            
        case 0x05:
            if c[1] == 0x07 && c[2] == 0x00 && c[3] == 0x00 {
                ext = FileType.CWK
            }
            
        case 0x06:
            if c[1] == 0x07 && c[2] == 0xE1 && c[3] == 0x00 {
                ext = FileType.CWK
            }
            
        case 0x0B:
            if c[1] == 0x77 {
                ext = FileType.AC3
            }
            
        case 0x1A:
            if c[1] == 0x45 && c[2] == 0xDF && c[3] == 0xA3 {
                ext = FileType.MKV
            }
            
        case 0x1F:
            if c[1] == 0x9D {
                ext = FileType.Z
            } else if c[1] == 0x8B {
                ext = FileType.GZ
            }
            
        case 0x20:
            if c[1] == 0x20 && c[2] == 0x20 && c[3] == 0x20 {
                ext = FileType.FITS
            }
            
        case 0x23:
            if c[1] == 0x21 && c[2] == 0x41 && c[3] == 0x4D && c[4] == 0x52 {
                ext = FileType.AMR
            }
            
        case 0x25:
            if c[1] == 0x21 && c[2] == 0x50 && c[3] == 0x53 {
                ext = FileType.PS
            } else if c[1] == 0x50 && c[2] == 0x44 && c[3] == 0x46 {
                ext = FileType.PDF
            }
            
        case 0x2E:
            if c[1] == 0x73 && c[2] == 0x6E && c[3] == 0x64 {
                ext = FileType.AU
            }
            
        case 0x30:
            if c[1] == 0x26 && c[2] == 0xB2 && c[3] == 0x75 {
                ext = FileType.ASF
            }
            
        case 0x37:
            if c[1] == 0x7A && c[2] == 0xBC && c[3] == 0xAF {
                ext = FileType.SevenZ
            }
            
        case 0x38:
            if c[1] == 0x42 && c[2] == 0x50 && c[3] == 0x53 {
                ext = FileType.PSD
            }
            
        case 0x3C:
            if c[1] == 0x3F && c[2] == 0x78 && c[3] == 0x6D && c[4] == 0x6C && c[5] == 0x20 && c[6] == 0x76 && c[7] == 0x65 && c[8] == 0x72 && c[9] == 0x73 && c[10] == 0x69 && c[11] == 0x6F && c[12] == 0x6E && c[13] == 0x3D {
                ext = FileType.XML
            }
            
        case 0x3D:
            if c[1] == 0x20 && c[2] == 0x20 && c[3] == 0x20 {
                ext = FileType.FITS
            }
            
        case 0x41:
            if c[1] == 0x56 && c[2] == 0x49 && c[3] == 0x20 {
                ext = FileType.AVI
            } else if c[1] == 0x49 && c[2] == 0x46 && c[3] == 0x46 {
                ext = FileType.AIFF
            }
            
        case 0x42:
            if c[1] == 0x50 && c[2] == 0x47 && c[3] == 0xFB {
                ext = FileType.BPG
            } else if c[1] == 0x5A && c[2] == 0x68 {
                ext = FileType.BZ2
            } else if c[1] == 0x4D {
                ext = FileType.BMP
            }
            
        case 0x43:
            if c[1] == 0x72 && c[2] == 0x32 && c[3] == 0x34 {
                ext = FileType.SevenZ
            } else if c[1] == 0x44 && c[2] == 0x30 && c[3] == 0x30 {
                ext = FileType.ISO
            }
            
        case 0x46:
            if c[1] == 0x4F && c[2] == 0x52 && c[3] == 0x4D {
                ext = FileType.TXT
            } else if c[1] == 0x4C && c[2] == 0x49 && c[3] == 0x46 {
                ext = FileType.FLIF
            } else if c[1] == 0x4C && c[2] == 0x56 {
                ext = FileType.FLV
            } else if c[1] == 0x4F && c[2] == 0x52 && c[3] == 0x4D {
                ext = FileType.AIFF
            } else if c[1] == 0x57 && c[2] == 0x53 {
                ext = FileType.SWF
            }
            
        case 0x47:
            if c[1] == 0x49 && c[2] == 0x46 && c[3] == 0x38 {
                ext = FileType.GIF
            }
            
        case 0x49:
            if c[1] == 0x49 && c[2] == 0x2A && c[3] == 0x00 {
                ext = FileType.TIFF
            } else if c[1] == 0x44 && c[2] == 0x33 {
                // Needs more validation
                ext = FileType.MP3
            }
            
        case 0x4D:
            if c[1] == 0x4D && c[2] == 0x00 && c[3] == 0x2A {
                ext = FileType.TIFF
            } else if c[1] == 0x4C && c[2] == 0x56 && c[3] == 0x49 {
                ext = FileType.MLV
            } else if c[1] == 0x54 && c[2] == 0x68 && c[3] == 0x64 {
                ext = FileType.MIDI
            } else if c[1] == 0x5A {
                ext = FileType.EXE
            }
            
        case 0x4E:
            if c[1] == 0x45 && c[2] == 0x53 && c[3] == 0x1A {
                ext = FileType.NES
            }
            
        case 0x4F:
            if c[1] == 0x67 && c[2] == 0x67 && c[3] == 0x53 {
                ext = FileType.OGG
            }
            
        case 0x50:
            if c[1] == 0x4D && c[2] == 0x4F && c[3] == 0x43 {
                ext = FileType.DAT
            } else if c[1] == 0x4B && c[2] == 0x03 && c[3] == 0x04 {
                ext = FileType.ZIP
            } else if c[1] == 0x4B && c[2] == 0x05 && c[3] == 0x06 {
                ext = FileType.ZIP
            } else if c[1] == 0x4B && c[2] == 0x07 && c[3] == 0x08 {
                ext = FileType.ZIP
            }
            
        case 0x52:
            if c[1] == 0x49 && c[2] == 0x46 && c[3] == 0x46 {
                ext = FileType.AVI_WAV
            } else if c[1] == 0x61 && c[2] == 0x72 && c[3] == 0x21 {
                ext = FileType.RAR
            }
            
        case 0x53:
            if c[1] == 0x49 && c[2] == 0x4D && c[3] == 0x50 {
                ext = FileType.FITS
            }
            
        case 0x57:
            if c[1] == 0x41 && c[2] == 0x56 && c[3] == 0x45 {
                ext = FileType.WAV
            }
            
        case 0x66:
            if c[1] == 0x4C && c[2] == 0x61 && c[3] == 0x43 {
                ext = FileType.FLAC
            }
            
        case 0x78:
            if c[1] == 0x61 && c[2] == 0x72 && c[3] == 0x21 {
                ext = FileType.XAR
            } else if c[1] == 0x01 && c[2] == 0x73 && c[3] == 0x0D {
                ext = FileType.DMG
            }
            
        case 0x89:
            if c[1] == 0x50 && c[2] == 0x4E && c[3] == 0x47 {
                ext = FileType.PNG
            }
            
        case 0xA6:
            if c[1] == 0xD9 && c[2] == 0x00 && c[3] == 0xAA {
                ext = FileType.ASF
            }
            
        case 0xCA:
            if c[1] == 0xFE && c[2] == 0xBA && c[3] == 0xBE {
                ext = FileType.JAVA
            }
            
        case 0xD0:
            if c[1] == 0xCF && c[2] == 0x11 && c[3] == 0xE0 {
                ext = FileType.DOC
            }
            
        case 0xEF:
            if c[1] == 0xBB && c[2] == 0xBF {
                ext = FileType.UTF8
            }
            
        case 0xFE:
            if c[1] == 0xFF {
                ext = FileType.UTF16
            }
            
        case 0xFF:
            if c[1] == 0xD8 && c[2] == 0xFF && (c[3] == 0xE0 || c[3] == 0xE1) {
                ext = FileType.JPG
                
            } else if c[1] == 0xFB {
                ext = FileType.MP3
                
            } else if c[1] == 0xF1 {
                ext = FileType.AAC_4
                
            } else if c[1] == 0xFE {
                ext = FileType.UTF16
            }
            
        default:
            ext = FileType.UNKNOWN
            
        }
        
        if ext == .UNKNOWN {
            if c[0] == 0x00 && c[1] == 0x00 && c[2] == 0x00 && c[3] == 0x14 && c[4] == 0x66 && c[5] == 0x74 && c[6] == 0x79 && c[7] == 0x70 {
                ext = FileType.QuickTimeContainer
                
                if c[8] == 0x69 && c[9] == 0x73 && c[10] == 0x6F && c[11] == 0x6D {
                    ext = FileType.MP4_ISO_V1
                } else if c[8] == 0x71 && c[9] == 0x74 && c[10] == 0x20 && c[11] == 0x20 {
                    ext = FileType.MOV
                } else if c[8] == 0x33 && c[9] == 0x67 && c[10] == 0x70 {
                    ext = FileType.ThreeGP
                }
                
                
                
            } else if c[0] == 0x00 && c[1] == 0x00 && c[2] == 0x00 && c[3] == 0x18 && c[4] == 0x66 && c[5] == 0x74 && c[6] == 0x79 && c[7] == 0x70 {
                ext = FileType.QuickTimeContainer
                
                if c[8] == 0x33 && c[9] == 0x67 && c[10] == 0x70 && c[11] == 0x35 {
                    ext = FileType.MP4
                } else if c[8] == 0x6D && c[9] == 0x70 && c[10] == 0x34 && c[10] == 0x32 {
                    ext = FileType.M4V
                } else if c[8] == 0x33 && c[9] == 0x67 && c[10] == 0x70 {
                    ext = FileType.ThreeGP
                }
                
            } else if c[0] == 0x00 && c[1] == 0x00 && c[2] == 0x00 && c[3] == 0x1C && c[4] == 0x66 && c[5] == 0x74 && c[6] == 0x79 && c[7] == 0x70 {
                ext = FileType.QuickTimeContainer
                
                c = [UInt8](count: 24, repeatedValue: 0)
                self.getBytes(&c, length: 24)
                
                var tmpStr: String = ""
                
                for i in c {
                    let hex = String(i, radix: 16)
                    
                    tmpStr = tmpStr + hex + " "
                }
                
                if c[8]  == 0x4D && c[9]  == 0x53 && c[10] == 0x4E && c[11] == 0x56
                    && c[12] == 0x01 && c[13] == 0x29 && c[14] == 0x00 && c[15] == 0x46
                    && c[16] == 0x4D && c[17] == 0x53 && c[18] == 0x4E && c[19] == 0x56
                    && c[20] == 0x6D && c[21] == 0x70 && c[22] == 0x34 && c[23] == 0x32 {
                    ext = FileType.MP4
                    
                } else if c[8] == 0x6D && c[9]  == 0x70 && c[10] == 0x34 && c[11] == 0x32 {
                    ext = FileType.MP4
                    
                } else if c[8] == 0x6D && c[9]  == 0x4D && c[10] == 0x34 && c[11] == 0x56 {
                    ext = FileType.M4V
                    
                } else if c[8] == 0x33 && c[9]  == 0x67 && c[10] == 0x70 && c[11] == 0x34 {
                    ext = FileType.ThreeGP
                    
                }
                
            } else if c[4] == 0x66 && c[5] == 0x74 && c[6] == 0x79 && c[7] == 0x70 {
                if c[8] == 0x6D && c[9] == 0x70 && c[10] == 0x34 && c[11] == 0x32 {
                    ext = FileType.M4V
                    
                } else {
                    ext = FileType.MP4
                    
                }
                
            } else if c[0] == 0x00 && c[1] == 0x00 && c[2] == 0x01 && c[3] == 0xBA {
                ext = FileType.MPG
                
            } else if c[0] == 0x00 && c[1] == 0x00 && c[2] == 0x01 && c[3] == 0xB1 {
                ext = FileType.MPG
                
            }
        }
        
        if ext == .UNKNOWN {
            c = [UInt8](count: 262, repeatedValue: 0)
            self.getBytes(&c, length: 262)
            
            for i in c {
                let hex = String(i, radix: 16)
                
                tmpStr = tmpStr + hex + " "
            }

            if ext == .UNKNOWN {
                // TAR file is 75 73 74 61 72 @ (0x101) byte offset
                
                if c[257] == 0x75 && c[258] == 0x73 && c[259] == 0x74 && c[260] == 0x61 && c[261] == 0x72 {
                    ext = FileType.TAR
                }
            }
        }
        
        return ext
    }
}













  