//
//  ContentView.swift
//  Bullseye
//
//  Created by Egor Svistushkin on 25.07.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisible: Bool = false
    @State private var sliderValue: Double = 50.0
    @State private var game: Game = Game()
    
    var body: some View {
        VStack {
            Text("PUT THE BULLSEYE AS CLOSE AS YOU CAN")
                .bold()
                .kerning(2.0)
                .multilineTextAlignment(.center)
                .lineSpacing(4)
                .font(.footnote)
            Text(String(game.target))
                .kerning(-1.0)
                .font(.largeTitle)
                .fontWeight(.black)
            HStack {
                Text("1")
                    .bold()
                Slider(value: $sliderValue, in: 1.0...100.0)
                Text("100")
                    .bold()
            }
            .padding(.horizontal)
            Button(action: {
             print("Button pressed")
                self.alertIsVisible = true
            }) {
            Text("Hit me!")
        }
            .alert(isPresented: $alertIsVisible, content: {
                let roundedNumber: Int = Int(self.sliderValue)
                return Alert(title: Text("Hello there!"), message: Text("The slider's value is \(roundedNumber).\n" + "You scored \(self.game.points(sliderValue: roundedNumber))"), dismissButton: .default(Text("Awesome!")))
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
    }
}
