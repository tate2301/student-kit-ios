//
//  CoursesTimeTableView.swift
//  StudentKit
//
//  Created by Munyaradzi Gordon Muneka on 29/8/2020.
//  Copyright © 2020 Munyaradzi Gordon Muneka. All rights reserved.
//

import SwiftUI

struct CoursesTimeTableView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack{
                Text("Course timetable")
            }
        }
        .padding()
        .navigationBarTitle(Text("Timetable"))
    }
}

struct CoursesTimeTableView_Previews: PreviewProvider {
    static var previews: some View {
        CoursesTimeTableView()
    }
}
