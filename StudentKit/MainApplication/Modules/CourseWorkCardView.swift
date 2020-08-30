//
//  CourseWorkView.swift
//  StudentKit
//
//  Created by Munyaradzi Gordon Muneka on 30/8/2020.
//  Copyright © 2020 Munyaradzi Gordon Muneka. All rights reserved.
//

import SwiftUI

struct CourseWorkCardView: View {
    var body: some View {
        VStack(alignment: .leading){
            VStack(alignment: .leading){
                Text("90%")
                    .foregroundColor(Color.black)
                Text("In-Class test 4")
                    .foregroundColor(Color.gray)
                Spacer()
                    .frame(height: 8)
                Text("16 July 2020")
                    .foregroundColor(Color.gray)
            }
            Spacer()
                .frame(height: 8)
            Divider()
        }
    }
}

struct CourseWorkCardView_Previews: PreviewProvider {
    static var previews: some View {
        CourseWorkCardView()
    }
}
