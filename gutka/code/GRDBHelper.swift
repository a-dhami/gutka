//
//  GRDBHelper.swift
//  gutka
//
//  Created by Akashdeep Dhami on 2021-09-01.
//

import Foundation
import GRDB

class GRDBHelper{
    
    static let sharedInstance = GRDBHelper()
    
    var dbQueue: DatabaseQueue?
        
    private init() {
        // Create connection to database
        do {
            let path = Bundle.main.path(forResource: "gutkaDB", ofType: "sqlite")
            
            dbQueue = try DatabaseQueue(path: path!)
            print("GRDB: Connected to DB")
        } catch {
            print("Creating connection to database error: \(error)")
        }
    }
    
    func getParagraphs(article: Int) -> [Paragraph] {
        
        do{
            try dbQueue!.read {db in
                let paragraphs = try Paragraph.fetchAll(db, sql: "SELECT * FROM paragraphs")
                print(paragraphs[0])
            }
        }
        catch{
            
        }
        
    }
}
