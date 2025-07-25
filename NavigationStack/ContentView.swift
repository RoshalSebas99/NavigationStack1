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
                Text("This is the root view!")
                    .font(.title)
                    .padding(30)
                NavigationLink(destination: SecondView()) {
                    Text("Click me")
                        .bold()
                        .foregroundStyle(.pink)
                        
                .background(
                    RoundedRectangle(cornerRadius: 45)
                        .fill(Color(red: 0.9, green: 0.8, blue: 1.0))
                        .frame(width: 100, height: 60)
                    )
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
