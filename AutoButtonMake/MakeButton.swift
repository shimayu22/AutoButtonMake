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
            
            //配置場所
            simpleButton.layer.position = CGPoint(x: 20 + (i - 1) * 60, y: 20)
            
            //tagの番号
            simpleButton.tag = i
            
            //ボタン表示
            gamen.view.addSubview(simpleButton)
            
        }
    }
}
