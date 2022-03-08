//
//  ViewController.swift
//  Storyboard_8
//
//  Created by 최준호 on 2022/01/17.
//

import UIKit
import WebKit   //webview 불러 올때 필요
//Web View (deprecated) iphone 11버전 미만에서 자주 사용되던 방식
//1. url String을 준비한다 (웹 주소)
//2. url 주소를 urlRequest로 만들기
//3. urlRequest를 로드한다


class Xcode_WebView: UIViewController {

  
    
    @IBOutlet weak var WebviewMain: WKWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
     
        
        let urlString = "https://www.google.com"
        if let url = URL(string: urlString){
            let urlReq = URLRequest(url: url)
            WebviewMain.load(urlReq)
        }
        
        
    }


}

