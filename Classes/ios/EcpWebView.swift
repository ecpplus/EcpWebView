//
//  EcpplusWebView.swift
//  EcpplusWebView
//
//  Created by chu on 10/14/16.
//  Copyright © 2016 chu. All rights reserved.
//

import Foundation
import UIKit
import WebKit

public class EcpWebView: WKWebView {
    public init() {
        super.init(frame: CGRect.zero, configuration: WKWebViewConfiguration())
        self.translatesAutoresizingMaskIntoConstraints = false

        addObserver(self, forKeyPath: "loading", options: NSKeyValueObservingOptions.new, context: nil)
    }

    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    deinit {
        removeObserver(self, forKeyPath: "loading")
    }

    override public func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {

        if keyPath == "loading" {
            UIApplication.shared.isNetworkActivityIndicatorVisible = isLoading
        }
    }
}
