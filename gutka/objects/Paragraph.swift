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
    var gurmukh_pID: Int64
    var txt_english: String
    var txt_gurmukhi: String
    
    init(id: Int64, article_id: Int64, paragraph_id: Int64, gurmukh_pID: Int64, txt_english: String, txt_gurmukhi: String) {
        self.id = id
        self.article_id = article_id
        self.paragraph_id = paragraph_id
        self.gurmukh_pID = gurmukh_pID
        self.txt_english = txt_english
        self.txt_gurmukhi = txt_gurmukhi
    }
}
