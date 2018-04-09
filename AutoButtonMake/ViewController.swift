//
//  ViewController.swift
//  AutoButtonMake
//
//  Created by 島田裕 on 2018/04/08.
//  Copyright © 2018年 shimayu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var koko: UIScrollView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let a = MakeButton(gamen: self.koko, count: 20)
        a.makeButton()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func pushButton(_ btn:UIButton){
        print("\(btn.tag)番のボタンが押されました")
    }
}

