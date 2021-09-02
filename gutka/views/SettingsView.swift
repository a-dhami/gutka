//
//  SettingsView.swift
//  gutka
//
//  Created by Akashdeep Dhami on 2021-08-05.
//

import SwiftUI


struct SettingsView: View {
    @State var darkToggle : Bool = Instance.sharedInstance.darkMode
    @State var fontSize : Double = Instance.sharedInstance.fontSize
    @State var gurmukhiOn : Bool = Instance.sharedInstance.gurmukhiOn
    @State var romanOn : Bool = Instance.sharedInstance.romanOn
    
    var body: some View {
        NavigationView{
            Form{
                Section(header: Text("Text Settings"),
                        footer: Text("Select what text is displayed.")){
                    
                    //English Transcription Button
                    Toggle("Roman-English Text", isOn: $romanOn
                    ).onChange(of: romanOn, perform: { value in
                        Instance.sharedInstance.romanOn = romanOn
                        print(Instance.sharedInstance.romanOn)
                    }).onAppear(){
                        self.romanOn = Instance.sharedInstance.romanOn
                    }
                    
                    
                    //Gurmukhi Script Button
                    Toggle("Gurmukhi Text", isOn: $gurmukhiOn
                    ).onChange(of: gurmukhiOn, perform: { value in
                        Instance.sharedInstance.gurmukhiOn = gurmukhiOn
                        print(Instance.sharedInstance.gurmukhiOn)
                    }).onAppear(){
                        self.gurmukhiOn = Instance.sharedInstance.gurmukhiOn
                    }
                }
                
                
                Section(header: Text("Display Settings"),
                        footer: Text("Adjust Dark Mode and Text Size")){
                    
                    //Dark Mode Toggle Button Code
                    Toggle("Dark Mode", isOn: $darkToggle
                    ).onChange(of: darkToggle, perform: { value in
                        Instance.sharedInstance.darkMode = darkToggle
                        print(Instance.sharedInstance.darkMode)
                    }).onAppear(){
                        self.darkToggle = Instance.sharedInstance.darkMode
                    }
                    
                    
                    //Font Size Slider Code
                    Slider(value: $fontSize, in: 12...40, step: 2).onChange(of: fontSize, perform: { value in
                        Instance.sharedInstance.fontSize = fontSize
                        print(Instance.sharedInstance.fontSize)
                    }).onAppear(){
                        self.fontSize = Instance.sharedInstance.fontSize
                    }
                    
                    
                    
                }
                
                
            }
        }
        
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
