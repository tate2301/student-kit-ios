//
//  SubmitAssignmentsView.swift
//  StudentKit
//
//  Created by Munyaradzi Gordon Muneka on 29/8/2020.
//  Copyright © 2020 Munyaradzi Gordon Muneka. All rights reserved.
//

import SwiftUI

struct SubmitAssignmentsView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack{
                Text("Submit assignments")
            }
        }
        .padding()
        .navigationBarTitle(Text("Assignments"))
    }
}

struct SubmitAssignmentsView_Previews: PreviewProvider {
    static var previews: some View {
        SubmitAssignmentsView()
    }
}
