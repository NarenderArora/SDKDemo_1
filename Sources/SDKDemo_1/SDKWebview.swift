//
//  File.swift
//  
//
//  Created by A1TM1WZ7 on 14/07/23.
//

import Foundation
import WebKit

public class SDKWebView: WKWebView {
    //comment done
    public init() {
        let webConfiguration = WKWebViewConfiguration()
        webConfiguration.preferences.javaScriptEnabled = true
        super.init(frame: .zero, configuration: webConfiguration)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    @discardableResult
    public func getUsername() -> String {
        "SDKdemo tested"
    }

    @discardableResult
    public func load() -> WKNavigation? {
        if let url = URL(string:"http://google.com") {
            let req = URLRequest(url: url)
            return super.load(req)
        }
        return nil
    }
}
