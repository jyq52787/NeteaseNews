//
//  ViewController.swift
//  正则表达式
//
//  Created by 贾永强 on 15/10/26.
//  Copyright © 2015年 heima. All rights reserved.
//

import UIKit
let string: String = "哈哈 http://www.itheima.com 哈哈哈"
class regexViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let ranges = urlRanges()
        
        
        print((string as NSString).substringWithRange(ranges![0]))
        
        
    }
    
    
    private func urlRanges() -> [NSRange]? {
        
        //需求过滤出 字符串:"哈哈 http://www.itheima.com 哈哈哈" 中的网址部分
        // 提示：开发中，如果需要特殊的正则，可以百度 例如网址\手机号码\email等
        
        let pattern = "[a-zA-Z]*://[a-zA-Z0-9/\\.]*"
        let regex = try! NSRegularExpression(pattern: pattern, options: NSRegularExpressionOptions.DotMatchesLineSeparators)
        
        // 用正则匹配 url 内容, 如果一个文本里可能有多个网址连接,所以用matchesInString,此方法是NSRegularExpression的扩展方法
        let results = regex.matchesInString(string, options: NSMatchingOptions(rawValue: 0), range: NSMakeRange(0, string.characters.count))
        
        // 遍历数组，生成结果
        var ranges = [NSRange]()
        
        for r in results {
            ranges.append(r.rangeAtIndex(0))
        }
        
        return ranges
        
    }
    
}

