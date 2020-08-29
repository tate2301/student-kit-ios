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
        VStack{
            Text("Course information")
        }
        .navigationBarTitle(Text("\(name)"))
    }
}

struct CourseView_Previews: PreviewProvider {
    static var previews: some View {
        CourseView(name: "")
    }
}
