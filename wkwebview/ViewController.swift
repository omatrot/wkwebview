//
//  ViewController.swift
//  wkwebview
//
//  Created by Olivier MATROT on 28/01/2021.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {

    var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let bundle = Bundle.main
        let path = bundle.path(forResource: "map", ofType: "html")
        var html = ""
        do {
            try html = String(contentsOfFile: path!, encoding: .utf8)
        } catch {
        //ERROR
        }

        webView.loadHTMLString(html, baseURL: nil)
        webView.allowsBackForwardNavigationGestures = true
    }

    override func loadView() {
    webView = WKWebView()
    webView.navigationDelegate = self
    view = webView
    }
}

