//
//  ThirdView.swift
//  NavigationStack
//
//  Created by Roshal Sebastian on 7/24/25.
//
import SwiftUI


struct ThirdView: View {
    @State private var name: String = ""
    var body: some View {
        NavigationStack {
            VStack {
                Image("Image")
                    .resizable()
                    .frame(width: 250, height: 200)
                Text("Guess who this artist is!")
                    .font(.title)
                    .padding(20)
                
                TextField("Type here...", text: $name)
                    .textFieldStyle(.roundedBorder)
                    .padding(.horizontal)
                if name.lowercased() == "ariana grande" {
                    NavigationLink("Go to next page", destination: FourthView())
                    
                }
                
                    NavigationLink(destination: FourthView()) {
                        Text("Let's see if you are right")
                            .padding(20.0)
                            .bold()
                            .foregroundStyle(.blue)
                            .padding(20.0)
                            .background(
                                RoundedRectangle(cornerRadius: 45)
                                    .fill(Color(red: 0.9, green: 0.8, blue: 1.0))
                                    .frame(width: 250, height: 60)
                            )
                    }
                }
                
            }
            .navigationTitle("ThirdPage")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true)
        }
    }
    #Preview {
        ThirdView()
    }

