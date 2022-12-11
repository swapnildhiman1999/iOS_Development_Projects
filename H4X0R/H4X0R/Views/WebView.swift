//
//  WebView.swift
//  H4X0R
//
//  Created by Swapnil Dhiman on 29/11/22.
//


//yeh seekhna hoga dude
import Foundation
import WebKit
import SwiftUI

struct WebView : UIViewRepresentable{
    
    let urlString : String?
    
    //allows us to create a Swift UI view(Web View) that represents UIKit web view (UIView)
    func makeUIView(context: Context) -> WebView.UIViewType {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString{
            if let url = URL(string: safeString){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}




