//
//  Quote.swift
//  Pensamentos
//
//  Copyright © 2019 Rafaela Galdino. All rights reserved.
//

import Foundation

struct Quote: Codable { // protocolo que permite codificar minha classe em um json ou vice-versa (Encodable & Decodable)
    let quote: String
    let author: String
    let image: String
    
    var quoteFormatted: String {
        return " ‟" + quote + "” "
    }
    
    var authorFormatted: String {
        return "- " + author + " -"
    }
}
