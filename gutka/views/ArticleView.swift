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
        ScrollViewReader{ scrollView in
            List(){
                ForEach(paragraphs){paragraph in
                    if(sharedInstance.gurmukhiOn == true){
                        VStack(){
                            if(paragraph.isCentered){
                                Text(paragraph.txt_gurmukhi)
                                    .font(.system(size:CGFloat(paragraph.isHeadline ? sharedInstance.fontSize + 7 : sharedInstance.fontSize)))
                                    .foregroundColor(sharedInstance.gurmukhiCol)
                                    .frame(maxWidth: .infinity)
                                    .multilineTextAlignment(paragraph.isCentered ? .center : .leading)
                            }
                            else{
                                Text(paragraph.txt_gurmukhi)
                                    .font(.system(size:CGFloat(sharedInstance.fontSize) ))
                                    .foregroundColor(sharedInstance.gurmukhiCol)
                            }
                        }
                    }
                    if(sharedInstance.romanOn == true){
                        VStack(){
                            if(paragraph.isCentered){
                                Text(paragraph.txt_roman)
                                    .font(.system(size:CGFloat(paragraph.isHeadline ? sharedInstance.fontSize + 7 : sharedInstance.fontSize)))
                                    .foregroundColor(sharedInstance.romanCol)
                                    .frame(maxWidth: .infinity)
                                    .multilineTextAlignment(paragraph.isCentered ? .center : .leading)
                            }
                            else{
                                Text(paragraph.txt_roman)
                                    .font(.system(size:CGFloat(sharedInstance.fontSize)))
                                    .foregroundColor(sharedInstance.romanCol)
                            }
                        }
                    }
                    if(sharedInstance.hindiOn == true){
                        VStack(){
                            if(paragraph.isCentered){
                                Text(paragraph.txt_hindi)
                                    .font(.system(size:CGFloat(paragraph.isHeadline ? sharedInstance.fontSize + 7 : sharedInstance.fontSize)))
                                    .foregroundColor(sharedInstance.hindiCol)
                                    .frame(maxWidth: .infinity)
                                    .multilineTextAlignment(paragraph.isCentered ? .center : .leading)
                            }
                            else{
                                Text(paragraph.txt_hindi)
                                    .font(.system(size:CGFloat(sharedInstance.fontSize)))
                                    .foregroundColor(sharedInstance.hindiCol)
                            }
                        }
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
