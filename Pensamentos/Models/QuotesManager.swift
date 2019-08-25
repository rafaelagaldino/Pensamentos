//
//  QuotesManager.swift
//  Pensamentos
//
//  Copyright © 2019 Rafaela Galdino. All rights reserved.
//

import Foundation

class QuotesManager {
    let quotes: [Quote]
    
    init() {
        let fileURL = Bundle.main.url(forResource: "quotes", withExtension: "json")!
        let jsonData = try! Data(contentsOf: fileURL)
        let jsonDecoder = JSONDecoder()
        quotes = try! jsonDecoder.decode([Quote].self, from: jsonData)
    }
    
    func getRandomQuote() -> Quote {
        let index = Int.random(in: 0...quotes.count-1)
        return quotes[index]
    }
}
