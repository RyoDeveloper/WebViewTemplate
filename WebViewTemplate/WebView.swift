//
//  WebView.swift
//  WebViewTemplate
//
//  https://github.com/RyoDeveloper/WebViewTemplate
//  Copyright © 2023 RyoDeveloper. All rights reserved.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    var url: String

    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let url = URL(string: url) else {
            return
        }
        uiView.load(URLRequest(url: url))
    }
}

struct WebView_Previews: PreviewProvider {
    static var previews: some View {
        WebView(url: "https://github.com/RyoDeveloper/WebViewTemplate")
    }
}
