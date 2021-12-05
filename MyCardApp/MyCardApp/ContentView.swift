//
//  ContentView.swift
//  MyCardApp
//
//  Created by Egor Svistushkin on 14.06.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.10, green: 0.74, blue: 0.61).ignoresSafeArea()
            VStack {
                Image("avatar").resizable().aspectRatio(contentMode: .fill).frame(width: 150, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).clipShape(Circle()).overlay(Circle().stroke(lineWidth: 5))
                Text("Егор Свистушкин").font(.title)
                Text("IOS developer").font(.title2)
                Divider()
                Card(image: "phone.fill", message: "+74637185492")
                Card(image: "envelope.fill", message: "boyegorka@gmail.com")

            }.foregroundColor(.white)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Card: View {
    let image: String
    let message: String
    var body: some View {
        RoundedRectangle(cornerRadius: 25).frame(width: 350, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).overlay(HStack {
            Image(systemName: image).foregroundColor(.green)
            Text(message).foregroundColor(.black)
        })
    }
}
