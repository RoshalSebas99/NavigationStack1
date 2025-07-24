//
//  ThirdView.swift
//  NavigationStack
//
//  Created by Roshal Sebastian on 7/24/25.
//
import SwiftUI

struct ThirdView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Oooh, go to the next page!")
                    .font(.title)
                    .padding(20)
                NavigationLink(destination: FourthView()) {
                    Text("for a surprise!")
                        .bold()
                        .foregroundStyle(.blue)
                        .padding(20.0)
                        .background(
                            RoundedRectangle(cornerRadius: 45)
                               .fill(Color(red: 0.9, green: 0.8, blue: 1.0))
                                .frame(width: 200, height: 60)
                        )
                }
            }
            
        }
        .navigationTitle("SecondPage")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarHidden(true)
    }
    
}
    #Preview {
        ThirdView()
    }
