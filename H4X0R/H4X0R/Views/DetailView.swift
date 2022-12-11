//
//  DetailView.swift
//  H4X0R
//
//  Created by Swapnil Dhiman on 29/11/22.
//

import SwiftUI
import WebKit

struct DetailView: View {
    
    let url : String?
    
    var body: some View {
        WebView(urlString:url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        //trying to display a url using web page
        DetailView(url: "https://www.google.com")
    }
}

