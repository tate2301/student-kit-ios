//
//  ContentView.swift
//  StudentKit
//
//  Created by Munyaradzi Gordon Muneka on 28/8/2020.
//  Copyright © 2020 Munyaradzi Gordon Muneka. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            ModulesMainView().tabItem({
                Image(systemName: "book.fill")
                Text("Modules")
                }).tag(0)
                .navigationBarTitle(Text("Modules"))
            BursaryMainView().tabItem({
                Image(systemName: "dollarsign.circle.fill")
                Text("Bursary")
            }).tag(1)
            .navigationBarTitle(Text("Bursary"))
            TransportMainView().tabItem({
                Image(systemName: "car.fill")
                Text("Transport")
            }).tag(1)
            NotificationsMainView().tabItem({
                Image(systemName: "bell.fill")
                Text("Notifications")
            }).tag(1)
        }
   }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
