//
//  DetailView.swift
//  H4X0R
//
//  Created by Emir Bakac on 11.12.2024.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

#Preview {
    DetailView(url: "https://www.google.com")
}

