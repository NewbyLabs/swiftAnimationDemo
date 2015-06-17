//
//  ViewController.swift
//  animationDemo
//
//  Created by Brandon on 5/22/15.
//  Copyright (c) 2015 Brandon Newby. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var testView: UIImageView = UIImageView()
    var imageAsset: UIImage = UIImage(named: "square")!
    
    var deviceWidth:  CGFloat = 0
    
    var imageAssetWidth:  CGFloat = 0
    var imageAssetHeight: CGFloat = 0
    
    var animationCount = 0
    var isAnimating = false
    
    @IBOutlet weak var counterLabel: UILabel!
    
    
    @IBAction func animatePressed(sender: AnyObject) {
        
        if !isAnimating {
        
            // Animation constants
            let duration: NSTimeInterval = 2.0
            let delay:    NSTimeInterval = 0.5
            let options                  = UIViewAnimationOptions.Autoreverse
        
            // Animation Code
            UIView.animateWithDuration(duration, delay: delay, options: options, animations: {
        
                
                self.isAnimating = true
                
                // Move the image
                self.testView.frame = CGRect(x: self.deviceWidth/2 - self.imageAssetWidth/2, y: 400,
                    width: self.imageAssetWidth, height: self.imageAssetHeight)
        
        
        
        
                }, completion: {animationFinished in
        
                    // Update counter label
                    self.counterLabel.text = "Count: \(++self.animationCount)"
                
                    // Hold image back at the starting place
                    self.testView.frame = CGRect(x: self.deviceWidth/2 - self.imageAssetWidth/2, y: 50,
                        width: self.imageAssetWidth, height: self.imageAssetHeight)
                    
                    self.isAnimating = false
                
                
            })
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // This sets the our width variables to be the same
        // size as the current frame
        deviceWidth  = self.view.frame.width
        
        // This will give us a CGFloat value for our image's
        // width and height
        imageAssetWidth  = imageAsset.size.width
        imageAssetHeight = imageAsset.size.height
        
        // This line assigns our image to be the background image
        // of out testView UIImage View
        testView.image = imageAsset
        
        // This will set the size and position of our testView
        testView.frame = CGRect(x: deviceWidth/2 - imageAssetWidth/2, y: 50,
                            width: imageAssetWidth, height: imageAssetHeight)
        
        // This adds the testView to the current active view
        // so it is visible in the app
        self.view.addSubview(testView)
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}