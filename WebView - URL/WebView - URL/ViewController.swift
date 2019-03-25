//
//  ViewController.swift
//  WebView - URL
//
//  Created by cuongDeptrai on 3/16/19.
//  Copyright © 2019 cuongDeptrai. All rights reserved.
//

import UIKit
import WebKit
class ViewController: UIViewController , WKNavigationDelegate{
    
    @IBOutlet var webView: WKWebView!
   override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.navigationDelegate = self
        view = webView
    
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string: "https//ww.apple.it")
        let myRequest = URLRequest(url: myURL!)
        webView.allowsLinkPreview = true
        webView.load(myRequest)
    }
    
}

