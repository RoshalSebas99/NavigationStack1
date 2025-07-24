//
//  ContentView.swift
//  NavigationStack
//
//  Created by Roshal Sebastian on 7/24/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("This is the root view")
                NavigationLink(destination: SecondView()) {
                    Text("Click me!")
                }
            }
        }
        .navigationTitle("Home")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarHidden(true)
    }
}



#Preview {
    ContentView()
}
