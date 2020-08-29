//
//  TransportMainView.swift
//  StudentKit
//
//  Created by Munyaradzi Gordon Muneka on 29/8/2020.
//  Copyright © 2020 Munyaradzi Gordon Muneka. All rights reserved.
//

import SwiftUI

struct TransportMainView: View {
    var body: some View {
        NavigationView{
            VStack{
                Text("Transport")
            }.navigationBarTitle(Text("Transport"))
            .navigationBarItems(trailing: HStack{
                Image(systemName: "person.circle")
            })
        }
    }
}

struct TransportMainView_Previews: PreviewProvider {
    static var previews: some View {
        TransportMainView()
    }
}
