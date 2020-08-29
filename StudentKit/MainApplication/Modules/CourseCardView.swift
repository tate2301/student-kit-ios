//
//  CourseCardView.swift
//  StudentKit
//
//  Created by Munyaradzi Gordon Muneka on 29/8/2020.
//  Copyright © 2020 Munyaradzi Gordon Muneka. All rights reserved.
//

import SwiftUI

struct CourseCardView: View {
    
    var info: CoursesData
    
    var body: some View {
        VStack{
            Image(systemName: info.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 56, height: 56, alignment: .center)
                .foregroundColor(Color.orange)
            Text(info.title)
                .font(.footnote)
                .foregroundColor(Color.black)
        }
    }
}

struct CourseCardView_Previews: PreviewProvider {
    static var previews: some View {
        CourseCardView(info: displayData[0])
    }
}
