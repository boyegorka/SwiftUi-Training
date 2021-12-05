//
//  ContentView.swift
//  ContextMenu
//
//  Created by Egor Svistushkin on 24.06.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image("Image")
            .resizable()
            .frame(height: 300)
            .cornerRadius(30)
            .padding()
            .contextMenu {
                VStack {
                    Button(action: {
                        print("copy")
                    }) {
                        HStack {
                            Image(systemName: "doc.on.doc")
                            Text("Copy")
                        }
                    }
                    
                    Button(action: {
                        print("Share")
                    }) {
                        HStack {
                            Image(systemName: "square.and.arrow.up")
                            Text("Share")
                        }
                    }
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
