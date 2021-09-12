//
//  ContentView.swift
//  gutka
//
//  Created by Akashdeep Dhami on 2021-08-04.
//

import SwiftUI

struct ContentView: View {
    
    var sharedInstance = Instance.sharedInstance
    
    @State var darkMode: Bool = false
    
    var body: some View {
                
        NavigationView {
            List(articleData) {article in
                VStack(alignment: .leading) {
                    NavigationLink(destination: ArticleView(item: article.id)) {
                        Text(article.eng_name)
                            .font(.system(size:CGFloat(sharedInstance.fontSize) ))
                                    }
                    //Text(article.eng_name).font(.headline)
                    Text(article.san_name).font(.system(size:CGFloat(sharedInstance.fontSize - 2) ))
                        .onAppear {
                            
                        }
                }
            }
            .navigationBarTitle("Gutka", displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: SettingsView(darkMode : $darkMode)) {
                        Image(systemName: "gearshape")
                    }
                }
            }
        }
        .preferredColorScheme(darkMode ? .dark : .light)
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
