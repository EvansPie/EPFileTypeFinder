//
//  Enumerations.swift
//  EPFileTypeFinder
//
//  Created by Evangelos Pittas on 31/03/16.
//  Copyright © 2016 EP. All rights reserved.
//

import Foundation

public enum FileType {
    case PNG, JPG, GIF, TIFF, TXT, ICO, ThreeGP, FLAC, Z, GZ, MKV, FLIF, LZ4, SevenZ, MLV, NES, DAT, XAR, CWK, CRX, DOC, FITS, ISO, BMP, MP3, AVI, AVI_WAV, WAV, OGG, PSD, ASF, PDF, PS, RAR, ZIP, AIFF, BPG, BZ2, EXE, MIDI, DMG, MP4, XML, TAR, AAC_4, AAC_2, AMR, AU, QuickTimeContainer, MP4_ISO_V1, MOV, M4A, M4V, MPG, UTF8, UTF16, JAVA, SWF, FLV, AC3, UNKNOWN
    
    func typicalExtension() -> String {
        switch self {
        case .PNG:
            return "png"
            
        case .JPG:
            return "jpg | jpeg"
            
        case .GIF:
            return "gif"
            
        case .TIFF:
            return "tif | tiff"
            
        case .TXT:
            return "txt | ftxt | iff"
            
        case .ICO:
            return "ico"
            
        case .ThreeGP:
            return "3gp"
            
        case .FLAC:
            return "flac"
        case .Z:
            return "z"
            
        case .GZ:
            return "gz"
            
        case .MKV:
            return "mkv | mka | mks | mk3d | webm"
            
        case .FLIF:
            return "flif"
            
        case .LZ4:
            return "lz4"
            
        case .SevenZ:
            return "7z"
            
        case .MLV:
            return "mlv"
            
        case .NES:
            return "nes"
            
        case .DAT:
            return "dat"
            
        case .XAR:
            return "xar"
            
        case .CWK:
            return "cwk"
            
        case .CRX:
            return "crx"
            
        case .DOC:
            return "doc | xls | ppt | msg"
            
        case .FITS:
            return "fits"
            
        case .ISO:
            return "iso"
            
        case .BMP:
            return "bmp | dib"
            
        case .MP3:
            return "mp3"
            
        case .AVI:
            return "avi"
            
        case .AVI_WAV:
            return "avi | wav"
            
        case .WAV:
            return "wav"
            
        case .OGG:
            return "ogg | oga | ogv"
            
        case .PSD:
            return "psd"
            
        case .ASF:
            return "asf | wma | wmv"
            
        case .PDF:
            return "pdf"
            
        case .PS:
            return "ps"
            
        case .RAR:
            return "rar"
            
        case .ZIP:
            return "zip | jar | odt | ods | odp | docx | xlsx | pptx | vsdx | apk"
            
        case .AIFF:
            return "aiff | aif | aifc | snd | iff"
            
        case .BPG:
            return "bpg"
            
        case .BZ2:
            return "bz2"
            
        case .EXE:
            return "exe"
            
        case .MIDI:
            return "midi | mid"
            
        case .DMG:
            return "dmg"
            
        case .MP4:
            return "mp4"
            
        case .XML:
            return "xml"
            
        case .TAR:
            return "tar"
            
        case .AAC_4:
            return "aac"
            
        case .AAC_2:
            return "aac"
            
        case .AMR:
            return "amr"
            
        case .AU:
            return "au"
            
        case .QuickTimeContainer:
            return "QuickTimeContainer"
            
        case .MP4_ISO_V1:
            return "mp4"
            
        case .MOV:
            return "mov"
            
        case .M4A:
            return "m4a"
            
        case .M4V:
            return "m4v"
            
        case .MPG:
            return "mpg"
            
        case .UTF8:
            return "utf-8"
            
        case .UTF16:
            return "utf-16"
            
        case .JAVA:
            return "java"
            
        case .SWF:
            return "swf"
            
        case .FLV:
            return "flv"
            
        case .AC3:
            return "ac3"
            
        default:
            return "octet-stream"
        }
    }
    
    func description() -> String {
        switch self {
        case .PNG:
            return "Image encoded in the Portable Network Graphics format"
            
        case .JPG:
            return "JPEG raw or in the JFIF or Exif file format"
            
        case .GIF:
            return "Image file encoded in the Graphics Interchange Format (GIF)"
            
        case .TIFF:
            return "Tagged Image File Format"
            
        case .TXT:
            return "IFF Formatted Text"
            
        case .ICO:
            return "Computer icon encoded in ICO file format"
            
        case .ThreeGP:
            return "3rd Generation Partnership Project 3GPP and 3GPP2 multimedia files"
            
        case .FLAC:
            return "Free Lossless Audio Codec"
        case .Z:
            return "Compressed file (often tar zip)"
            
        case .GZ:
            return "GZIP Format"
            
        case .MKV:
            return "Matroska media container, including WebM"
            
        case .FLIF:
            return "Free Lossless Image Format"
            
        case .LZ4:
            return "LZ4 Streaming Format"
            
        case .SevenZ:
            return "7-Zip File Format"
            
        case .MLV:
            return "Magic Lantern Video file"
            
        case .NES:
            return "Nintendo Entertainment System ROM file"
            
        case .DAT:
            return "Windows Files And Settings Transfer Repository"
            
        case .XAR:
            return "eXtensible ARchive format"
            
        case .CWK:
            return "AppleWorks document"
            
        case .CRX:
            return "Google Chrome extension or packaged app"
            
        case .DOC:
            return "Microsoft Office documents"
            
        case .FITS:
            return "Flexible Image Transport System (FITS)"
            
        case .ISO:
            return "ISO9660 CD/DVD image file"
            
        case .BMP:
            return "BMP file, a bitmap format used mostly in the Windows world"
            
        case .MP3:
            return "MP3 audio file format"
            
        case .AVI:
            return "Audio Video Interleave video format"
            
        case .AVI_WAV:
            return "Audio Video Interleave video format or Waveform Audio File Format"
            
        case .WAV:
            return "Waveform Audio File Format"
            
        case .OGG:
            return "OGG, an open source media container format"
            
        case .PSD:
            return "Photoshop Document file, Adobe Photoshop's native file format"
            
        case .ASF:
            return "Advanced Systems Format"
            
        case .PDF:
            return "PDF document"
            
        case .PS:
            return "PostScript document"
            
        case .RAR:
            return "RAR archive"
            
        case .ZIP:
            return "Zip file format and formats based on it, such as JAR, ODF, OOXML"
            
        case .AIFF:
            return "Audio Interchange File Format"
            
        case .BPG:
            return "Better Portable Graphics format"
            
        case .BZ2:
            return "Compressed file using Bzip2 algorithm"
            
        case .EXE:
            return "DOS MZ executable file format and its descendants (including NE and PE)"
            
        case .MIDI:
            return "MIDI sound file"
            
        case .DMG:
            return "Apple Disk Image file"
            
        case .MP4:
            return "MPEG-4 video files"
            
        case .XML:
            return "Windows Visual Stylesheet XML file"
            
        case .TAR:
            return "Tape Archive file"
            
        case .AAC_4:
            return "MPEG-4 Advanced Audio Coding (AAC) Low Complexity (LC) audio file"
            
        case .AAC_2:
            return "MPEG-2 Advanced Audio Coding (AAC) Low Complexity (LC) audio file"
            
        case .AMR:
            return "Adaptive Multi-Rate ACELP (Algebraic Code Excited Linear Prediction) Codec, commonly audio format with GSM cell phones"
            
        case .AU:
            return "NeXT/Sun Microsystems µ-Law audio file"
            
        case .QuickTimeContainer:
            return "QuickTime container"
            
        case .MP4_ISO_V1:
            return "ISO Base Media file (MPEG-4) v1"
            
        case .MOV:
            return "QuickTime movie file"
            
        case .M4A:
            return "Apple Lossless Audio Codec file"
            
        case .M4V:
            return "MPEG-4 video/QuickTime file"
            
        case .MPG:
            return "MPEG file"
            
        case .UTF8:
            return "UTF-8"
            
        case .UTF16:
            return "UTF-16"
            
        case .JAVA:
            return "JAVA"
            
        case .SWF:
            return "SWF"
            
        case .FLV:
            return "FLV"
            
        case .AC3:
            return "AC3"
            
        default:
            return "Bits & bytes"
        }
    }
}