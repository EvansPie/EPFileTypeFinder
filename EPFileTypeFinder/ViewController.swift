//
//  ViewController.swift
//  EPFileTypeFinder
//
//  Created by Evangelos Pittas on 31/03/16.
//  Copyright © 2016 EP. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        do {
            let files = try NSFileManager.defaultManager().contentsOfDirectoryAtPath(NSBundle.mainBundle().bundlePath)
            
            for file in files {
                let filePath: String = NSBundle.mainBundle().bundlePath + "/" + file
                let fileUrl: NSURL = NSURL.fileURLWithPath(filePath)

                if let data: NSData = NSData(contentsOfURL: fileUrl) {
                    
                    if data.type().typicalExtension() == "octet-stream" {
                        print("Unknown file \(file)\n")
                    } else {
                        print("File \(file) is \(data.type().typicalExtension())\n")
                    }
                    
                }
                
            }
            
        } catch let error as NSError {
            print("Error: \(error)")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

