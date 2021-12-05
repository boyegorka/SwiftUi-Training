//
//  ContentView.swift
//  UserDefaults
//
//  Created by Egor Svistushkin on 27.06.2021.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var settings = UDSettings()
    
    @State var isOn = false
    
    var body: some View {
        VStack(alignment: .center) {
            Toggle(isOn: self.$settings.isOn) {
                Text("")
            }
            .fixedSize()
    }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        background(settings.isOn ? Image("Image") : Image("Image1"))
        
    }
}
    
   

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
