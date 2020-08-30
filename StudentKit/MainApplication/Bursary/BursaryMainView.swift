//
//  BursaryMainView.swift
//  StudentKit
//
//  Created by Munyaradzi Gordon Muneka on 29/8/2020.
//  Copyright © 2020 Munyaradzi Gordon Muneka. All rights reserved.
//

import SwiftUI

struct BursaryMainView: View {
    var body: some View {
        NavigationView{
            VStack{
                Text("Bursary")
            }.navigationBarTitle(Text("Bursary"))
        }
    }
}

struct BursaryMainView_Previews: PreviewProvider {
    static var previews: some View {
        BursaryMainView()
    }
}
