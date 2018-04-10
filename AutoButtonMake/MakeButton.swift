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
    
    let base:UIViewController
    let count:Int

    init(base:UIViewController,count:Int){
        self.base = base
        self.count = count
    }
    
    func makeButton(){
        //UIScrollViewを作る
        let scrollView:UIScrollView = UIScrollView()
        scrollView.frame.size = CGSize(width: 340, height: 300)
        scrollView.center = base.view.center
        
        let w:Int
        let a:Int = count/3
        
        w = (a + 1) * 60
        
        scrollView.contentSize = CGSize(width: 340, height: w)
        
        //ボタンを作る
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
            simpleButton.frame = CGRect(x: 0, y: 0, width: 80, height: 50)
            
            let x:Int
            let y:Int
            if i < 4 {
                x = (i-1)*110+60
                y = 25
            } else if i < 7 {
                x = (i-4)*110+60
                y = 85
            } else if i < 10 {
                x = (i-7)*110+60
                y = 145
            } else if i < 13 {
                x = (i-10)*110+60
                y = 205
            } else if i < 16 {
                x = (i-13)*110+60
                y = 265
            } else if i < 19 {
                x = (i-16)*110+60
                y = 325
            } else {
                x = (i-19)*110+60
                y = 385
            }
            
            //配置場所
            simpleButton.layer.position = CGPoint(x: x, y: y)
            
            //tagの番号
            simpleButton.tag = i
            
            simpleButton.addTarget(self, action: #selector(ViewController.pushButton(_:)), for: .touchDown)
            
            //ボタン表示
            scrollView.addSubview(simpleButton)
            
        }
        
        base.view.addSubview(scrollView)
    }
}
