//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Egor Svistushkin on 29.05.2021.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    @Published private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["👻","🎃", "🕷","🕸","☠️"]
            .shuffled()

        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pairIndex in
            return emojis[pairIndex]
        }
    }
    
    
    // MARK:- Access to the Model
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    // MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
