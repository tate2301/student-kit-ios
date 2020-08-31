//
//  AssignmentsView.swift
//  StudentKit
//
//  Created by Munyaradzi Gordon Muneka on 29/8/2020.
//  Copyright © 2020 Munyaradzi Gordon Muneka. All rights reserved.
//

import SwiftUI

struct AssignmentsView: View {
    var body: some View {
        VStack{
            VStack(alignment: .leading, spacing: 32){
                VStack(alignment: .leading, spacing: 8){
                    Text("Use the Fidel's rule to calculate the area of the given droids and express your answers as simplified.")
                        .font(.headline)
                    Text("Uploaded 2 days ago")
                        .foregroundColor(.gray)
                    Spacer()
                        .frame(height: 8)
                    Text("Group")
                        .padding(.horizontal, 16)
                        .padding(.vertical, 8)
                        .foregroundColor(.white)
                        .background(Color.purple)
                        .cornerRadius(8)
                    HStack{
                        Text("DEADLINE")
                            .foregroundColor(.gray)
                        Spacer()
                            .frame(width: 32)
                        Text("Thursday 22 July 2020")
                    }
                }
                VStack(alignment: .leading){
                    Text("Attachments")
                        .font(.headline)
                    ForEach(0..<3){i in
                        CourseMaterialCardView()
                        Divider()
                    }
                }
                NavigationLink(destination: VerifyInternalTransfer()) {
                    Text("Submit")
                        .foregroundColor(Color.white)
                        .frame(maxWidth: .infinity)
                        .frame(height: 40)
                        .background(Color.blue)
                        .cornerRadius(8)
                }
            }.padding(.horizontal)
            Spacer()
        }.navigationBarTitle(Text("Assignments"))
    }
}

struct AssignmentsView_Previews: PreviewProvider {
    static var previews: some View {
        AssignmentsView()
    }
}
