//
//  ContentView.swift
//  FlagGame
//
//  Created by Egor Svistushkin on 18.06.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var countries = ["UK", "USA", "Bangladesh", "Germany", "Argentina", "Brazil", "Canada", "Greece", "Russia", "Sweden"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    @State private var score = 0
    @State private var showingScore = false
    @State private var scoreTitle = ""
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.red, .purple, .blue]), startPoint: .bottom, endPoint: .top).edgesIgnoringSafeArea(.all)
            VStack {
                VStack {
                    Text("Выбери флаг: ")
                        .foregroundColor(.white)
                        .font(.headline)
                    Text(countries[correctAnswer])
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .fontWeight(.black)
                }
                
                ForEach(0..<3) { number in
                    Button(action: {
                        self.flagTapped(number)
                        self.showingScore = true
                        self.askQuestion()
                    }) {
                        Image(self.countries[number])
                            .frame(width: 220, height: 120)
                            .clipShape(RoundedRectangle(cornerRadius: 5))
                            .padding(10)
                    }
                }
                Text("Общий счёт: \(score)")
                    .foregroundColor(.white)
                
            }
            
        }
        
    }
    func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
    
    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Правильный ответ!"
            score += 1
        } else {
            scoreTitle = "Неправильно! Это флаг \(countries[number])"
            score -= 1
        }
    }
    
}















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
