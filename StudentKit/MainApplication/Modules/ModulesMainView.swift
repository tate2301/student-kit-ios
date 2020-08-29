//
//  ModulesMainView.swift
//  StudentKit
//
//  Created by Munyaradzi Gordon Muneka on 29/8/2020.
//  Copyright © 2020 Munyaradzi Gordon Muneka. All rights reserved.
//

import SwiftUI

struct ModulesMainView: View {
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack{
                    Text("Courses")
                    ScrollView(.horizontal){
                        Text("iwe")
                        Text("iwe")
                        Text("iwe")
                        Text("iwe")
                        Text("iwe")
                    }
                }
                
                
            }.navigationBarTitle(Text("Modules"))
            .navigationBarItems(trailing: HStack{
                Image(systemName: "person.circle")
            })
        }
    }
}

struct ModulesMainView_Previews: PreviewProvider {
    static var previews: some View {
        ModulesMainView()
    }
}
