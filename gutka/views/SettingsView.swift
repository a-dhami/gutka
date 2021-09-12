//
//  SettingsView.swift
//  gutka
//
//  Created by Akashdeep Dhami on 2021-08-05.
//

import SwiftUI


struct SettingsView: View {
    
    @Binding var darkMode : Bool
    @Environment(\.presentationMode) var presentationMode
    
    @State var fontSize : Double = Instance.sharedInstance.fontSize
    @State var gurmukhiOn : Bool = Instance.sharedInstance.gurmukhiOn
    @State var romanOn : Bool = Instance.sharedInstance.romanOn
    @State var hindiOn : Bool = Instance.sharedInstance.hindiOn
    @State var gurmukhiCol: Color =
       Instance.sharedInstance.gurmukhiCol
    @State var romanCol: Color =
       Instance.sharedInstance.romanCol
    @State var hindiCol: Color =
       Instance.sharedInstance.hindiCol
    
    var body: some View {
        NavigationView{
            Form{
                Section(header: Text("Text Language Options")){
                    
                    //Gurmukhi Script Button
                    Toggle("Gurmukhi Text", isOn: $gurmukhiOn
                    ).onChange(of: gurmukhiOn, perform: { value in
                        Instance.sharedInstance.gurmukhiOn = gurmukhiOn
                        print(Instance.sharedInstance.gurmukhiOn)
                    }).onAppear(){
                        self.gurmukhiOn = Instance.sharedInstance.gurmukhiOn
                    }
                    
                    //English Transcription Button
                    Toggle("Roman-English Text", isOn: $romanOn
                    ).onChange(of: romanOn, perform: { value in
                        Instance.sharedInstance.romanOn = romanOn
                        print(Instance.sharedInstance.romanOn)
                    }).onAppear(){
                        self.romanOn = Instance.sharedInstance.romanOn
                    }
                    
                    //Hindi Transcription Button
                    Toggle("Hindi Text", isOn: $hindiOn
                    ).onChange(of: hindiOn, perform: { value in
                        Instance.sharedInstance.hindiOn = hindiOn
                        print(Instance.sharedInstance.hindiOn)
                    }).onAppear(){
                        self.hindiOn = Instance.sharedInstance.hindiOn
                    }
                }
                
                
                //Display Color Picker
                Section(header: Text("Text Display Options")){
                    
                    ColorPicker("Gurmukhi Text Color", selection: $gurmukhiCol, supportsOpacity: false)
                        .onChange(of: gurmukhiCol, perform: { value in
                            Instance.sharedInstance.gurmukhiCol = gurmukhiCol
                        }).onAppear(){
                            self.gurmukhiCol = Instance.sharedInstance.gurmukhiCol
                        }
                    
                    ColorPicker("Roman-English Text Color", selection: $romanCol, supportsOpacity: false)
                    
                    ColorPicker("Hindi Text Color", selection: $hindiCol, supportsOpacity: false)
                    
                }
                
                
                Section(header: Text("Display Settings"),
                        footer: Text("Adjust Dark Mode and Text Size")){
                    
                    //Dark Mode Toggle Button Code
                    Toggle("Dark Mode", isOn: $darkMode).onChange(of: darkMode, perform: { value in
                        self.presentationMode.wrappedValue.dismiss()
                    })
                    
                    
                    //Font Size Slider Code
                    Slider(value: $fontSize, in: 12...40, step: 2).onChange(of: fontSize, perform: { value in
                        Instance.sharedInstance.fontSize = fontSize
                        print(Instance.sharedInstance.fontSize)
                    }).onAppear(){
                        self.fontSize = Instance.sharedInstance.fontSize
                    }
                }
            }
            .navigationBarTitle("Settings")
            
            
        }
        .navigationBarBackButtonHidden(true)
        
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView(darkMode: .constant(false))
    }
}
