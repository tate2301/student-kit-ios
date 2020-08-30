//
//  SettingsView.swift
//  StudentKit
//
//  Created by Munyaradzi Gordon Muneka on 29/8/2020.
//  Copyright © 2020 Munyaradzi Gordon Muneka. All rights reserved.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
       ScrollView(.vertical, showsIndicators: false){
            VStack{
                Text("Settings")
            }
        }
        .padding()
        .navigationBarTitle(Text("Settings"))
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
