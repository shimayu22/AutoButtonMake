//
//  MakeButton.swift
//  AutoButtonMake
//
//  Created by 島田裕 on 2018/04/08.
//  Copyright © 2018年 shimayu. All rights reserved.
//

import Foundation
import UIKit

class MakeButton{
    
    var gamen:UIViewController
    var count:Int
    
    init(gamen:UIViewController,count:Int){
        self.gamen = gamen
        self.count = count
    }
    
    func makeButton(){
        
        for i in 1 ... count {
            //ボタンの初期化
            let simpleButton = UIButton()
            
            //表示する文字
            simpleButton.setTitle(String(i), for: .normal)
            
            //ボタンの文字色
            simpleButton.setTitleColor(UIColor.blue, for: .normal)
            
            //ボタンの色
            simpleButton.backgroundColor = UIColor.orange
            
            //タップした時の文字色
            simpleButton.setTitleColor(UIColor.white, for: .highlighted)
            
            //サイズ
            simpleButton.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
            
            var x:Int
            var y:Int
            if i < 6 {
                x = 20 + (i - 1) * 60
                y = 100
            } else if i < 11 {
                x = 20 + (i - 6) * 60
                y = 200
            } else if i < 16 {
                x = 20 + (i - 11) * 60
                y = 300
            } else {
                x = 20 + (i - 10) * 60
                y = 400
            }
            //配置場所
            simpleButton.layer.position = CGPoint(x: x, y: y)
            
            //tagの番号
            simpleButton.tag = i
            
            simpleButton.addTarget(self, action: #selector(ViewController.pushButton(_:)), for: .touchDown)
            
            //ボタン表示
            gamen.view.addSubview(simpleButton)
            
        }
    }
}
