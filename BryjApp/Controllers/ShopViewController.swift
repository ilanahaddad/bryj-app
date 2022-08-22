//
//  ShopViewController.swift
//  BryjApp
//
//  Created by Ilana Haddad on 2022-08-21.
//

import UIKit
import WebKit

class ShopViewController: UIViewController, WKNavigationDelegate {
    var webView: WKWebView!
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        
        let url = URL(string: "https://www.thebay.com/c/men")!
        loadWebView(withURL: url, webView: webView)
    }
    
    @IBAction func burgerMenuPressed(_ sender: UIBarButtonItem) {
        openBurgerMenu(webView: webView)
    }
}
