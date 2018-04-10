//
//  ViewController.swift
//  AutoButtonMake
//
//  Created by 島田裕 on 2018/04/08.
//  Copyright © 2018年 shimayu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let a = MakeButton(base: self, count: 20)
        a.makeButton()

    }
        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func pushButton(_ btn:UIButton){
        print("\(btn.tag)番のボタンが押されました")
    }
}

