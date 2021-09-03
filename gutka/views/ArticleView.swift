//
//  ArticleView.swift
//  gutka
//
//  Created by Akashdeep Dhami on 2021-08-05.
//

import SwiftUI

struct ArticleView: View {
    let SQLH = SQLHelper.sharedInstance
    var sharedInstance = Instance.sharedInstance
    var item: Int
    
    
    var body: some View {
        let paragraphs = SQLH.getParagraphs(article: item)
        List(){
            ForEach(paragraphs){paragraph in
                if(sharedInstance.gurmukhiOn == true){
                    VStack(){
                        Text(paragraph.txt_gurmukhi).font(.system(size:CGFloat(sharedInstance.fontSize) ))
                    }
                }
                if(sharedInstance.romanOn == true){
                    VStack(){
                        Text(paragraph.txt_roman).font(.system(size:CGFloat(sharedInstance.fontSize) ))
                    }
                }
                if(sharedInstance.hindiOn == true){
                    VStack(){
                        Text(paragraph.txt_hindi).font(.system(size:CGFloat(sharedInstance.fontSize) ))
                    }
                }
            }
        }
    }
}

struct ArticleView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleView(item: 1)
    }
}
