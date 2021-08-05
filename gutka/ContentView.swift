//
//  ContentView.swift
//  gutka
//
//  Created by Akashdeep Dhami on 2021-08-04.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(articleData) {article in
                VStack(alignment: .leading) {
                    Text(article.eng_name).font(.headline)
                    Text(article.san_name).font(.caption)
                }
            }
            .navigationBarTitle("Gutka")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
