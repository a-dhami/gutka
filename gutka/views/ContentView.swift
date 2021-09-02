//
//  ContentView.swift
//  gutka
//
//  Created by Akashdeep Dhami on 2021-08-04.
//

import SwiftUI




struct ContentView: View {
    var sharedInstance = Instance.sharedInstance
    var body: some View {
        NavigationView {
            List(articleData) {article in
                VStack(alignment: .leading) {
                    NavigationLink(destination: ArticleView(item: article.id)) {
                        Text(article.eng_name)
                                    }
                    //Text(article.eng_name).font(.headline)
                    Text(article.san_name).font(.caption)
                }
            }
            .navigationBarTitle("Gutka", displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: SettingsView()) {
                        Image(systemName: "gearshape")
                    }
                }
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
