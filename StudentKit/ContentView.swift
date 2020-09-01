//
//  ContentView.swift
//  StudentKit
//
//  Created by Munyaradzi Gordon Muneka on 28/8/2020.
//  Copyright © 2020 Munyaradzi Gordon Muneka. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var selected = 0
    var body: some View {
        TabView{
            ModulesMainView().tabItem({
                Image(systemName: "book.fill")
                Text("Modules")
                }).tag(0)
            BursaryMainView().tabItem({
                Image(systemName: "dollarsign.circle.fill")
                Text("Bursary")
            }).tag(1)
            TransportMainView().tabItem({
                Image(systemName: "car.fill")
                Text("Transport")
            }).tag(2)
            NotificationsMainView().tabItem({
                Image(systemName: "bell.fill")
                Text("Notifications")
            }).tag(3)
        }
 
        /*VStack(){
            Spacer()
            BottomTabView(selected: $selected)
        }*/
   }
}

/*struct BottomTabView: View{
    @Binding var selected: Int
    var body: some View{
        VStack{
            HStack{
                Button(action: {
                    self.selected = 0
                }){
                    VStack{
                        Image(systemName: "book.fill")
                            .foregroundColor(self.selected == 0 ? .blue : .gray)
                        Text("Modules")
                            .foregroundColor(self.selected == 0 ? .blue : .black)
                    }
                }
                Spacer()
                Button(action: {
                    self.selected = 1
                }){
                    VStack{
                        Text("Tue")
                            .foregroundColor(self.selected == 1 ? .white : .gray)
                        Text("11")
                            .font(.headline)
                            .foregroundColor(self.selected == 1 ? .white : .black)
                    }
                    .padding(.horizontal)
                    .padding(.vertical, 8)
                    .background(RoundedRectangle(cornerRadius: 8).fill(self.selected == 1 ? Color.blue : Color.white))
                }
                Spacer()
                Button(action: {
                    self.selected = 2
                }){
                    VStack{
                        Text("Wed")
                            .foregroundColor(self.selected == 2 ? .white : .gray)
                        Text("12")
                            .font(.headline)
                            .foregroundColor(self.selected == 2 ? .white : .black)
                    }
                    .padding(.horizontal)
                    .padding(.vertical, 8)
                    .background(RoundedRectangle(cornerRadius: 8).fill(self.selected == 2 ? Color.blue : Color.white))
                }
                Spacer()
                Button(action: {
                    self.selected = 3
                }){
                    VStack{
                        Text("Thur")
                            .foregroundColor(self.selected == 3 ? .white : .gray)
                        Text("13")
                            .font(.headline)
                            .foregroundColor(self.selected == 3 ? .white : .black)
                    }
                    .padding(.horizontal)
                    .padding(.vertical, 8)
                    .background(RoundedRectangle(cornerRadius: 8).fill(self.selected == 3 ? Color.blue : Color.white))
                }
            }
        }
        .padding(.vertical, 8)
        .padding(.horizontal)
        .border(Color.gray.opacity(0.2))
    }
}*/

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
