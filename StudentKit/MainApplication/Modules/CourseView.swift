//
//  CourseView.swift
//  StudentKit
//
//  Created by Munyaradzi Gordon Muneka on 29/8/2020.
//  Copyright © 2020 Munyaradzi Gordon Muneka. All rights reserved.
//

import SwiftUI

struct CourseView: View {
    var body: some View {
        VStack{
            NavigationLink(destination: CourseMaterialsView()){
                Text("Courses materials")
            }
            
        }
        .navigationBarTitle(Text("Courses"))
    }
}

struct CourseView_Previews: PreviewProvider {
    static var previews: some View {
        CourseView()
    }
}
