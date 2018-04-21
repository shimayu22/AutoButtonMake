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
        scrollView.frame.size = CGSize(width: kViewWidth, height: kViewHeight)
        scrollView.center = base.view.center
        scrollView.backgroundColor = UIColor.lightGray
        
        let a:Int = count/3
        let h:Int = (a + 1) * (kButtonHeight + kViewMargin)
        
        scrollView.contentSize = CGSize(width: kViewWidth, height: h)
        
        //ボタンを作る
        for i in 0 ... count - 1 {
            //ボタンの初期化
            let simpleButton = UIButton()
            
            //表示する文字
            simpleButton.setTitle(String(i+1), for: .normal)
            
            //ボタンの文字色
            simpleButton.setTitleColor(UIColor.blue, for: .normal)
            
            //ボタンの色
            simpleButton.backgroundColor = UIColor.orange
            
            //タップした時の文字色
            simpleButton.setTitleColor(UIColor.white, for: .highlighted)
            
            //サイズ
            simpleButton.frame = CGRect(x: 0, y: 0, width: kButtonWidth, height: kButtonHeight)
            
            let b:Int = (i/3) * 3 //横位置の補正（3つ毎に折り返す）
            let x:Int = (i - b) * kPositionWidth + kButtonWidthMargin //ボタンの横位置
            let y:Int = (i/3) * kPositionHeight + kButtonHeightMargin//ボタンの縦位置
            
            //配置場所
            simpleButton.layer.position = CGPoint(x: x, y: y)
            
            //tagの番号
            simpleButton.tag = i+1
            
            //角丸を設定
            simpleButton.layer.cornerRadius = 10
            
            //ボタンを押した時の挙動
            simpleButton.addTarget(self, action: #selector(ViewController.pushButton(_:)), for: .touchDown)
            
            //ボタン表示（Viewに追加）
            scrollView.addSubview(simpleButton)
            
        }
        
        base.view.addSubview(scrollView)
    }
}
