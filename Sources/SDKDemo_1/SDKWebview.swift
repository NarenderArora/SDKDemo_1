//
//  File.swift
//  
//
//  Created by A1TM1WZ7 on 14/07/23.
//

import Foundation
import WebKit

public class SDKWebView: WKWebView {
    //comment
    public init() {
        let webConfiguration = WKWebViewConfiguration()
        webConfiguration.preferences.javaScriptEnabled = true
        super.init(frame: .zero, configuration: webConfiguration)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    @discardableResult
    public func load() -> WKNavigation? {
        if let url = URL(string:"http://example.com") {
            let req = URLRequest(url: url)
            return super.load(req)
        }
        return nil
    }
}
