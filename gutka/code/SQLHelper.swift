//
//  SQLHelper.swift
//  Gutka App
//
//  Created by Akashdeep Dhami

import Foundation
import SQLite


class SQLHelper {
    static let sharedInstance = SQLHelper()
    
    var database: Connection?
    
    let paragraphs = Table("paragraphs")
    
    let id = Expression<Int64>("id")
    let article_id = Expression<Int>("article_id")
    let paragraph_id = Expression<Int64>("paragraph_id")
    let gurmukh_pID = Expression<Int64?>("gurmukh_pID")
    let txt_english = Expression<String>("txt_english")
    let txt_gurmukhi = Expression<String>("txt_gurmukhi")
    
    private init() {
        // Create connection to database
        do {
            let path = Bundle.main.path(forResource: "gutkaDB", ofType: "sqlite")
            
            database = try Connection(path!, readonly: true)
            print("SQLH: Connected to DB")
        } catch {
            print("SQLH: Creating connection to database error: \(error)")
        }
    }
    
    
    func getParagraphs(article: Int) -> [Paragraph]{
        var paragraphs = [Paragraph]()
        
        let query = self.paragraphs.filter(article_id == article)
        print("article-id selected:", article)

            do {
                for paragraph in try database!.prepare(query) {
                    print("selected paragraph id: " , paragraph[id])
                    paragraphs.append(Paragraph(
                        id: paragraph[id],
                        article_id: Int64(paragraph[article_id]),
                        paragraph_id: paragraph[paragraph_id],
                        gurmukh_pID: paragraph[gurmukh_pID] ?? 0,
                        txt_english: paragraph[txt_english],
                        txt_gurmukhi: paragraph[txt_gurmukhi]))
                }
            } catch {
                print("Execution failed")
            }

            return paragraphs
    }
}






/*
 
 class SQLHelper {
    
    static let sharedInstance = SQLHelper()
    
    let path = Bundle.main.path(forResource: "gutkaDB", ofType: "sqlite")!
    var db : Connection
    
    private init(){
        self.db = try! Connection(path, readonly: true)
    }
    

    func getArticle(qID : Int){
        
        var resultParagraphs: [Paragraph] = []
        
        let paragraphs = Table("paragraphs")
        
        let id = Expression<Int64>("id")
        let article_id = Expression<Int>("article_id")
        let paragraph_id = Expression<Int>("paragraph_id")
        let gurmukh_pID = Expression<Int>("gurmukh_pID")
        let txt_english = Expression<String>("txt_english")
        let txt_gurmukhi = Expression<String>("txt_gurmukhi")
        
        let query = paragraphs.filter(article_id == qID)
        
        do {
        
            for paragraph in try db.prepare(paragraphs) {
                let item = paragraph
                print("id: \(paragraph[id]) ")
                
            }
        }
        
        catch {
            print("error")
        }
    }
 
 }
     */
    




// Notes:
// SELECT * from paragraphs where article_id = '1'
// would return all paragraphs for article 1
