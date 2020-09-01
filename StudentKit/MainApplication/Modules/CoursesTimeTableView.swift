//
//  CoursesTimeTableView.swift
//  StudentKit
//
//  Created by Munyaradzi Gordon Muneka on 29/8/2020.
//  Copyright © 2020 Munyaradzi Gordon Muneka. All rights reserved.
//

import SwiftUI

struct CoursesTimeTableView: View {
    @State var selected = 0
    var body: some View {
        VStack(){
            CourseTimetableCardView(selected: $selected)
            Spacer()
        }
        .navigationBarTitle(Text("Timetable"))
    }
}


struct CourseTimetableCardView: View {
    @Binding var selected: Int
    var body: some View {
        VStack{
            HStack{
                Button(action: {
                    self.selected = 0
                }){
                    VStack{
                        Text("Mon")
                            .foregroundColor(self.selected == 0 ? .white : .gray)
                        Text("10")
                            .font(.headline)
                            .foregroundColor(self.selected == 0 ? .white : .black)
                    }
                    .padding(.horizontal)
                    .padding(.vertical, 8)
                    .background(RoundedRectangle(cornerRadius: 8).fill(self.selected == 0 ? Color.blue : Color.white))
                }
                Spacer()
                Button(action: {
                    self.selected = 1
                }){
                    VStack{
                        Text("Tue")
                            .foregroundColor(self.selected == 1 ? .white : .gray)
                        Text("10")
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
                        Text("10")
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
                        Text("10")
                            .font(.headline)
                            .foregroundColor(self.selected == 3 ? .white : .black)
                    }
                    .padding(.horizontal)
                    .padding(.vertical, 8)
                    .background(RoundedRectangle(cornerRadius: 8).fill(self.selected == 3 ? Color.blue : Color.white))
                }
                Spacer()
                Button(action: {
                    self.selected = 4
                }){
                    VStack{
                        Text("Fri")
                            .foregroundColor(self.selected == 4 ? .white : .gray)
                        Text("10")
                            .font(.headline)
                            .foregroundColor(self.selected == 4 ? .white : .black)
                    }
                    .padding(.horizontal)
                    .padding(.vertical, 8)
                    .background(RoundedRectangle(cornerRadius: 8).fill(self.selected == 4 ? Color.blue : Color.white))
                }
            }
        }
        .padding(.horizontal)
        .background(Color.white)
    }
}


struct CoursesTimeTableView_Previews: PreviewProvider {
    static var previews: some View {
        CoursesTimeTableView()
    }
}
