//
//  ViewController.swift
//  animationDemo
//
//  Created by Brandon on 5/22/15.
//  Copyright (c) 2015 Brandon Newby. All rights reserved.
//

import UIKit

class tesVC: UIViewController {
    
    var testView: UIImageView = UIImageView()
    var imageAsset: UIImage = UIImage(named: "square")!
    
    var deviceWidth:  CGFloat = 0
    var deviceHeigth: CGFloat = 0
    
    var imageAssetWidth:  CGFloat = 0
    var imageAssetHeight: CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        deviceWidth  = self.view.frame.width
        deviceHeigth = self.view.frame.height
        
        imageAssetWidth = imageAsset.size.width
        imageAssetHeight = imageAsset.size.height
        
        testView.image = imageAsset
        testView.frame = CGRect(x: deviceWidth/2 - imageAssetWidth/2, y: CGFloat(50), width: imageAssetWidth, height: imageAssetHeight)
        
        self.view.addSubview(testView)
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    
}