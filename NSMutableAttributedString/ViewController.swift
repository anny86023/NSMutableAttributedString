//
//  ViewController.swift
//  NSMutableAttributedString
//
//  Created by anny on 2020/10/17.
//  Copyright © 2020 anny. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        //建立NSMutableAttributedString，設定要顯示的字串
        let attributedString = NSMutableAttributedString(string: "Hello Youtube")
        
        //從第7個字開始，後面7個字都設置為紅色&改變大小與字型
        attributedString.setAttributes([.foregroundColor: UIColor.red, .font:UIFont(name: "Chalkduster", size: 50.0)!], range: NSMakeRange(6, 7))
        
/* //Part1: 如何顯示不同字型大小、顏色？
        //從第7個字開始，後面7個字改變大小與字型
        attributedString.addAttribute(.font, value: UIFont(name: "Chalkduster", size: 50.0)!, range: NSMakeRange(6, 7))
        
        //從第1個字開始，5個字都設置為藍色
        attributedString.addAttribute(.foregroundColor, value: UIColor.blue, range: NSMakeRange(0, 5))
        
        //從第7個字開始，後面7個字都設置為紅色
        attributedString.addAttribute(.foregroundColor, value: UIColor.red, range: NSMakeRange(6, 7))
        
        // 更改文字背景顏色
        attributedString.addAttribute(.backgroundColor, value: UIColor.yellow, range: NSMakeRange(0, attributedString.length))
*/
        
/* //Part2: 如何在文字中加入刪除線、底線？
        // 刪除線
        attributedString.addAttribute(.strikethroughStyle, value: 1, range: NSMakeRange(0, attributedString.length))

        // 刪除線顏色
        attributedString.addAttribute(.strikethroughColor, value: UIColor.red, range: NSMakeRange(0, attributedString.length))
        
        // 底線
        attributedString.addAttribute(.underlineStyle, value: 1, range: NSMakeRange(0, attributedString.length))
        
        // 底線顏色
        attributedString.addAttribute(.underlineColor, value: UIColor.green, range: NSMakeRange(0, attributedString.length))
*/

 /* //Part3: 如何在文字當中加入陰影、外框顏色？

        // 加入外框寬度
        attributedString.addAttribute(.strokeWidth, value: 3 , range: NSMakeRange(6, 7))
        
        // 加入外框顏色
        attributedString.addAttribute(.strokeColor, value: UIColor.green , range: NSMakeRange(6, 7))
        
        //文字陰影
//        let shadow = NSShadow()
//        shadow.shadowColor = UIColor.purple
//        shadow.shadowOffset = CGSize(width: 5, height: 5)
//        shadow.shadowBlurRadius = 5.0
//
//        attributedString.addAttribute(.shadow, value: shadow , range: NSMakeRange(6, 7))
*/
        
/* //Part4: 如何讓文字斜體以及調整間距？
        // Hello 往右斜
        //attributedString.addAttribute(.obliqueness, value: 1, range: NSMakeRange(0, 5))
        
        // Youtube 往左斜
        //attributedString.addAttribute(.obliqueness, value: -1, range: NSMakeRange(6, 7))
        
        //文字間距
        //attributedString.addAttribute(.kern, value: 20 , range: NSMakeRange(6, 6))
*/
        
//Part5: 文字加入圖片以及網址link
        
        //文字加入圖片
        let youtube = NSTextAttachment()
        youtube.image = UIImage(named: "youtube")
        attributedString.append(NSAttributedString(attachment: youtube))
        
        label.attributedText = attributedString

        
        //文字加入網址連結 UILabel不行使用，需要使用UITextView
        attributedString.addAttribute(.link, value: URL(string: "https://www.youtube.com/")!, range: NSMakeRange(6, 7))
        textView.attributedText = attributedString
    }
}

