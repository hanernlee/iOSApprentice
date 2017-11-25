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
    var kind: String?
    var trackName: String?
    var trackPrice: Double?
    var trackViewUrl: String?
    var collectionName: String?
    var collectionViewUrl: String?
    var collectionPrice: Double?
    var itemPrice: Double?
    var itemGenre: String?
    var bookGenre: [String]?
    var currency = ""
    var imageSmall = ""
    var imageLarge = ""

    enum CodingKeys: String, CodingKey {
        case imageSmall = "artworkUrl60"
        case imageLarge = "artworkUrl100"
        case itemGenre = "primaryGenreName"
        case bookGenre = "genre"
        case itemPrice = "price"
        case kind, artistName, currency
        case trackName, trackPrice, trackViewUrl
        case collectionName, collectionPrice, collectionViewUrl
    }

    var name: String {
        return trackName ?? collectionName ?? ""
    }
    
    var type: String {
        let kind = self.kind ?? "audiobook"
        
        switch kind {
            case "album": return "Album"
            case "audiobook": return "Audio Book"
            case "book": return "Book"
            case "ebook": return "E-Book"
            case "feature-movie": return "Movie"
            case "music-video": return "Music Video"
            case "podcast": return "Podcast"
            case "software": return "App"
            case "song": return "Song"
            case "tv-episode": return "TV Episode"
            default: break
        }
        
        return "Unknown"
    }

    var description: String {
        return "Kind: \(kind ?? ""), Name: \(name), Artist name: \(artistName)\n"
    }
    
    var storeURL: String {
        return trackViewUrl ?? collectionViewUrl ?? ""
    }
    
    var price: Double {
        return trackPrice ?? collectionPrice ?? itemPrice ?? 0.0
    }
    
    var genre: String {
        if let genre = itemGenre {
            return genre
        } else if let genres = bookGenre {
            return genres.joined(separator: ", ")
        }
        return ""
    }
}

func < (lhs: SearchResult, rhs: SearchResult) -> Bool {
    return lhs.name.localizedStandardCompare(rhs.name) == .orderedAscending
}
