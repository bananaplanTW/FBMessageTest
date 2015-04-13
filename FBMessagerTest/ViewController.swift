//
//  ViewController.swift
//  FBMessagerTest
//
//  Created by Daz on 4/8/15.
//  Copyright (c) 2015 Daz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        /*if ([FBSDKMessengerSharer messengerPlatformCapabilities] & FBSDKMessengerPlatformCapabilityImage) {
            UIImage *image = [UIImage imageNamed:@"selfie_pic"];
            
            [FBSDKMessengerSharer shareImage:image withOptions:nil];
        }*/
        
        
        //if (FBSDKMessengerSharer.messengerPlatformCapabilities() & FBSDKMessengerPlatformCapability.Image) != nil {
            //var image = UIImage(named: "song");
            //FBSDKMessengerSharer.shareImage(image, withOptions: nil);
        //}
        var filePath = NSBundle.mainBundle().pathForResource("test2", ofType: "m4a");
        println(filePath);
        var data = NSData(contentsOfFile: filePath!);
        FBSDKMessengerSharer.shareAudio(data, withOptions: nil);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

