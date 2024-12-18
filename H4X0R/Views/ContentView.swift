//
//  ContentView.swift
//  H4X0R
//
//  Created by Emir Bakac on 11.12.2024.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                            .fontWeight(.bold)
                        Text(post.title)
                            .lineLimit(2)
                    }
                }
            }
            .navigationTitle("H4X0R News")
        }
        .task {
            await networkManager.fetchData()
        }
    }
}
                               
#Preview {
    ContentView()
}
