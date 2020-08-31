//
//  CourseMaterialsView.swift
//  StudentKit
//
//  Created by Munyaradzi Gordon Muneka on 29/8/2020.
//  Copyright © 2020 Munyaradzi Gordon Muneka. All rights reserved.
//

import SwiftUI

struct CourseMaterialsView: View {
    var body: some View {
        List{
            ForEach(0..<7){i in
                CourseMaterialCardView()
            }
        }
        .navigationBarTitle(Text("Course materials"))
    }
}

struct CourseMaterialsView_Previews: PreviewProvider {
    static var previews: some View {
        CourseMaterialsView()
    }
}
