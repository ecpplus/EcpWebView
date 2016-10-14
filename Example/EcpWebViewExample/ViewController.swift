//
//  ViewController.swift
//  EcpWebViewExample
//
//  Created by chu on 10/14/16.
//  Copyright © 2016 chu. All rights reserved.
//

import UIKit
import EcpWebView

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let webView = EcpWebView()

        view.addSubview(webView)

        webView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        webView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        webView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        webView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true

        let req = URLRequest(url: URL(string: "https://memo.ecp.plus/")!)
        webView.load(req)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

