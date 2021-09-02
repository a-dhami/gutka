//
//  SQLCommands.swift
//  gutka
//
//  Created by Akashdeep Dhami on 2021-09-01.
//
/*
import Foundation
import SQLite

class SQLCommands {
    
    static var table = Table("paragraphs")
    
    // Expressions
    static let id = Expression<Int>("id")
    static let article_id = Expression<Int64>("article_id")
    static let paragraph_id = Expression<Int64>("paragraph_id")
    static let gurmukh_pID = Expression<Int64>("gurmukh_pID")
    static let txt_english = Expression<String>("txt_english")
    static let txt_gurmukhi = Expression<String>("txt_gurmukhi")
    
    /*
    static let id = Expression<Int>("id")
    static let firstName = Expression<String>("firstName")
    static let lastName = Expression<String>("lastName")
    static let phoneNumber = Expression<String>("phoneNumber")
    static let photo = Expression<Data>("photo")
    */
    
    //Creating Table
    /*
    static func createTable() {
        guard let database = SQLHelper.sharedInstance.database else {
            print("Datastore connection error")
            return
        }
        
        do {
            // ifNotExists: true - Will NOT create a table if it already exists
            try database.run(table.create(ifNotExists: true) { table in
                table.column(id, primaryKey: true)
                table.column(firstName)
                table.column(lastName)
                table.column(phoneNumber, unique: true)
                table.column(photo)
            })
        } catch {
            print("Table already exists: \(error)")
        }
    }
    */
    
    // Inserting Row
    /*
    static func insertRow(_ contactValues:Contact) -> Bool? {
        guard let database = SQLHelper.sharedInstance.database else {
            print("Datastore connection error")
            return nil
        }
        
        do {
            try database.run(table.insert(firstName <- contactValues.firstName, lastName <- contactValues.lastName, phoneNumber <- contactValues.phoneNumber, photo <- contactValues.photo))
            return true
        } catch let Result.error(message, code, statement) where code == SQLITE_CONSTRAINT {
            print("Insert row failed: \(message), in \(String(describing: statement))")
            return false
        } catch let error {
            print("Insertion failed: \(error)")
            return false
        }
    }
     */
    
    // Updating Row
    /*
    static func updateRow(_ contactValues: Contact) -> Bool? {
        guard let database = SQLHelper.sharedInstance.database else {
            print("Datastore connection error")
            return nil
        }
        
        // Extracts the appropriate contact from the table according to the id
        let contact = table.filter(id == contactValues.id).limit(1)
        
        do {
            // Update the contact's values
            if try database.run(contact.update(firstName <- contactValues.firstName, lastName <- contactValues.lastName, phoneNumber <- contactValues.phoneNumber, photo <- contactValues.photo)) > 0 {
                print("Updated contact")
                return true
            } else {
                print("Could not update contact: contact not found")
                return false
            }
        } catch let Result.error(message, code, statement) where code == SQLITE_CONSTRAINT {
            print("Update row faild: \(message), in \(String(describing: statement))")
            return false
        } catch let error {
            print("Updation failed: \(error)")
            return false
        }
    }
     */
    
    // Present Rows
    static func presentRows() -> [Paragraph]? {
        guard let database = SQLHelper.sharedInstance.database else {
            print("Datastore connection error")
            return nil
        }
        
        // Paragraph Array
        var paragraphArray = [Paragraph]()
        
        // Sorting data in descending order by ID
        table = table.order(id.desc)
        
        do {
            for paragraph in try database.prepare(table) {
                
                let idValue = paragraph[id]
                let article_idValue = paragraph[article_id]
                let paragraph_idValue = paragraph[paragraph_id]
                let gurmukh_pIDValue = paragraph[gurmukh_pID]
                let txt_englishValue = paragraph[txt_english]
                let txt_gurmukhiValue = paragraph[txt_gurmukhi]
                
                // Create object
                let paragraphObject = Paragraph( id: idValue, article_id: article_idValue, paragraph_id: paragraph_idValue, gurmukh_pID: gurmukh_pIDValue, txt_english: txt_englishValue, txt_gurmukhi: txt_gurmukhiValue)
                
                // Add object to an array
                paragraphArray.append(paragraphObject)
                
                print("id \(paragraph[id]), en: \(paragraph[txt_english]), gr: \(paragraph[txt_gurmukhi])")
            }
        } catch {
            print("Present row error: \(error)")
        }
        return paragraphArray
    }
    
    // Delete Row
    
    /*
    static func deleteRow(contactId: Int) {
        guard let database = SQLHelper.sharedInstance.database else {
            print("Datastore connection error")
            return
        }
        
        do {
            let contact = table.filter(id == contactId).limit(1)
            try database.run(contact.delete())
        } catch {
            print("Delete row error: \(error)")
        }
    }
    */
}
*/
