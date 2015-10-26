//
//  photoSeletorViewController.swift
//  照片选择器
//
//  Created by 贾永强 on 15/10/20.
//  Copyright © 2015年 heima. All rights reserved.
//

import UIKit

class photoSeletorViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpImageV1()
        
        demo()
        
    }
    
    func demo() {
        print("I ")
    }
    func setUpImageV1(){
        
        let size = CGSizeMake(200, 200)
        
        let imageView = UIImageView()
        imageView.center = view.center
        imageView.bounds.size = size
        imageView.backgroundColor = UIColor.redColor()
        view.addSubview(imageView)
        
        
        print(imageView.center)
        
    }
    
    
    
    func setUpImageV2(){
        
        let center = CGPointMake(UIScreen.mainScreen().bounds.width / 2, UIScreen.mainScreen().bounds.height / 2)
        let size = CGSizeMake(200, 200)
        
        let imageView = UIImageView()
        imageView.center = center
        imageView.bounds.size = size
        imageView.backgroundColor = UIColor.redColor()
        
        view.addSubview(imageView)
        print(imageView.center)
        print(center)
        print(imageView)
        
        
    }
}
