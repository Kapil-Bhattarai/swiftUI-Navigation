//
//  ContentView.swift
//  NavigationUI
//
//  Created by Kapil Bhattarai on 09/02/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image(systemName: "house")
                    .resizable()
                    .frame(width: 200, height: 200, alignment: .center)
                    .padding()
                Text("First Screen")
                    .font(.system(size: 20, weight: .bold, design: .default))
                    .padding()
                HStack{
                    NavigationLink(
                        destination: Text("Hello World"),
                        label: {
                            ContinueButton(btnTitle: "First Screen")
                        })
                    NavigationLink(
                        destination: Image(systemName: "bell")
                            .resizable()
                            .frame(width: 200, height: 200, alignment: .center)
                            .padding(),
                        label: {
                            ContinueButton(btnTitle: "Second Screen")
                        })
                }
            }
            .navigationTitle("Home")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ContinueButton: View {
    var btnTitle: String
    var body: some View {
        Text(btnTitle)
            .frame(width: 200, height: 50, alignment: .center)
            .background(Color.pink)
            .foregroundColor(.white)
            .cornerRadius(8)
    }
}
