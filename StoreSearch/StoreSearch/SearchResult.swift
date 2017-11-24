//
//  SearchResult.swift
//  StoreSearch
//
//  Created by Christopher Lee on 24/11/17.
//  Copyright © 2017 Christopher Lee. All rights reserved.
//

import Foundation

class ResultArray:Codable {
    var resultCount = 0
    var results = [SearchResult]()
}

class SearchResult:Codable, CustomStringConvertible {
    var artistName = ""
    var trackName = ""
    var kind = ""
    var trackPrice = 0.0
    var currency = ""
    var imageSmall = ""
    var imageLarge = ""
    var storeURL = ""
    var genre = ""

    enum CodingKeys: String, CodingKey {
        case imageSmall = "artworkUrl60"
        case imageLarge = "artworkUrl100"
        case storeURL = "trackViewUrl"
        case genre = "primaryGenreName"
        case kind, artistName, trackName
        case trackPrice, currency
    }

    var name: String {
        return trackName
    }

    var description: String {
        return "Kind: \(kind), Name: \(name), Artist name: \(artistName)\n"
    }
}

