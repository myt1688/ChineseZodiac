//
//  ViewController.swift
//  registerDemo
//
//  Created by yutaoma on 2017/8/29.
//  Copyright © 2017年 yutaoma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var yearOfBirth: UITextField!
    /*
     @IBOutlet：与UI所绑定的标识，绑定方式是outlet
     weak：storage，内存管理的一种方式
     var：变量定义
     UITextField：变量的类型
    */
    @IBOutlet weak var image: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        yearOfBirth.resignFirstResponder()
    }

    @IBAction func okTapped(_ sender: Any) {
        yearOfBirth.resignFirstResponder()
        if let year = Int(yearOfBirth.text!){
            var imageNumber = (year - 4) % 12
            
            image.image = UIImage(named: String(imageNumber))
    //属性 image 的图片 = 图片当中名为 String(imageNumber) 的图片
        }
    }
    

}

