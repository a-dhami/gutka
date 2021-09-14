//
//  Paragraph.swift
//  gutka
//
//  Created by Akashdeep Dhami on 2021-08-04.
//

import Foundation

struct Paragraph : Identifiable {
    var id: Int64 
    var article_id: Int64
    var paragraph_id: Int64
    var txt_roman: String
    var txt_gurmukhi: String
    var txt_hindi: String
    var style: Int
    
    init(id: Int64, article_id: Int64, paragraph_id: Int64, txt_roman: String, txt_gurmukhi: String, txt_hindi: String, style: Int) {
        self.id = id
        self.article_id = article_id
        self.paragraph_id = paragraph_id
        self.txt_roman = txt_roman
        self.txt_gurmukhi = txt_gurmukhi
        self.txt_hindi = txt_hindi
        self.style = style
    }
}
