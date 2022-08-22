//
//  HomeViewController.swift
//  BryjApp
//
//  Created by Ilana Haddad on 2022-08-21.
//

import UIKit
import WebKit

class HomeViewController: UIViewController, WKNavigationDelegate {
    
    var webView: WKWebView!
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
    
        let url = URL(string: "https://www.thebay.com/")!
        loadWebView(withURL: url, webView: webView)
    }
    
    @IBAction func burgerMenuPressed(_ sender: UIBarButtonItem) {
        openBurgerMenu(webView: webView)
    }
    
}

