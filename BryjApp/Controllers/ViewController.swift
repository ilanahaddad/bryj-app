//
//  ViewController.swift
//  BryjApp
//
//  Created by Ilana Haddad on 2022-08-21.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

extension UIViewController {
    func setupNavigationBar() {
        let navBar = navigationController!.navigationBar
        let bannerWidth = navBar.frame.size.width * 0.5 // 0.5 its multiplier to get correct image width
        let bannerHeight = navBar.frame.size.height

        let view = UIView()
        view.backgroundColor = .clear
        view.frame = CGRect(x: 0, y: 0, width: bannerWidth, height: bannerHeight)

        let image = UIImage(named: "LogoHeader")
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFit
        imageView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)

        view.addSubview(imageView)
        self.navigationItem.titleView = view
    }
    
    func openBurgerMenu(webView: WKWebView) {
        let js = "document.getElementsByClassName('navbar-toggler')[0].click();"
        webView.evaluateJavaScript(js, completionHandler: nil)
    }
    
    func loadWebView(withURL url: URL, webView: WKWebView){
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
    }
}
