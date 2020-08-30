//
//  CourseView.swift
//  StudentKit
//
//  Created by Munyaradzi Gordon Muneka on 29/8/2020.
//  Copyright © 2020 Munyaradzi Gordon Muneka. All rights reserved.
//

import SwiftUI

struct CourseView: View {
    var name: String
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack(alignment: .leading, spacing: 32){
                VStack(alignment: .leading, spacing: 16){
                    NavigationLink(destination: CourseMaterialsView()){
                        VStack(alignment: .leading){
                            HStack{
                                Image(systemName: "folder")
                                    .foregroundColor(Color.black)
                                Text("Course materials")
                                    .padding(.horizontal,8)
                                    .foregroundColor(Color.black)
                                Spacer()
                                Text("2")
                                .foregroundColor(Color.gray)
                            }
                            Divider()
                        }
                    }
                    NavigationLink(destination: AssignmentsView()){
                        VStack(alignment: .leading){
                            HStack{
                                Image(systemName: "folder.badge.plus")
                                    .foregroundColor(Color.black)
                                Text("Assignments")
                                    .padding(.horizontal,8)
                                    .foregroundColor(Color.black)
                                Spacer()
                                Text("4")
                                    .foregroundColor(Color.gray)
                            }
                            Divider()
                        }
                    }
                }
                VStack(alignment: .leading, spacing: 16){
                    HStack{
                        Text("Coursework")
                            .font(.headline)
                        Spacer()
                    }
                    ForEach(0..<2){i in
                        //NavigationLink(destination: CourseView(name: displayData[i].title)){
                            CourseWorkCardView()
                        //}
                    }
                }
                .frame(maxWidth: .infinity)
            }
            
        }
        .padding()
        .navigationBarTitle(Text("\(name)"))
    }
}

struct CourseView_Previews: PreviewProvider {
    static var previews: some View {
        CourseView(name: "")
    }
}
