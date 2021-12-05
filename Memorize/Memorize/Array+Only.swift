//
//  Array+Only.swift
//  Memorize
//
//  Created by Egor Svistushkin on 07.06.2021.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
