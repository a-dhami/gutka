//
//  DataParser.swift
//  gutka
//
//  Created by Akashdeep Dhami on 2021-08-04.
//

import Foundation

func loadFile<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
            else {
        fatalError("Cannot find \(filename)")
    }
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Cannot load \(filename):\n\(error)")
    }
    do {
        let decoder = JSONDecoder()
        let format = DateFormatter()
        format.dateFormat = "yyyy-mm-dd"
        decoder.dateDecodingStrategy = .formatted(format)
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Cannot't parse \(filename): \(T.self):\n\(error)")
    }
}

let articleData: [Article] = loadFile("articlesData.json")


