//
//  WebView.swift
//  H4X0R
//
//  Created by Emir Bakac on 11.12.2024.
//
import Foundation
import WebKit
import SwiftUI

struct WebView: View {
    let urlString: String?

    var body: some View {
        if let urlString = urlString, let url = URL(string: urlString) {
            WebViewWrapper(url: url)
        } else {
            Text("Invalid URL")
        }
    }
}

struct WebViewWrapper: UIViewRepresentable {
    let url: URL

    func makeUIView(context: Context) -> WKWebView {
        WKWebView()
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(URLRequest(url: url))
    }
}

//import Foundation
//import WebKit
//import SwiftUI
//
//struct WebView: UIViewRepresentable {
//    
//    let urlString: String?
//    
//    func makeUIView(context: Context) -> WKWebView {
//        return WKWebView()
//    }
//    
//    func updateUIView(_ uiView: WKWebView, context: Context) {
//        if let safeString = urlString {
//            if let url = URL(string: safeString) {
//                let request = URLRequest(url: url)
//                uiView.load(request)
//            }
//        }
//    }
//}



