//
//  CourseMaterialCardView.swift
//  StudentKit
//
//  Created by Munyaradzi Gordon Muneka on 31/8/2020.
//  Copyright © 2020 Munyaradzi Gordon Muneka. All rights reserved.
//

import SwiftUI

struct CourseMaterialCardView: View {
    var body: some View {
        VStack(spacing: 8){
            HStack{
                Image(systemName: "folder.fill")
                Spacer()
                VStack(alignment: .leading){
                    Text("CUIT Web Design and E-Business book")
                        .lineLimit(1)
                    HStack{
                        Text("Uploaded two days ago")
                            .foregroundColor(Color.gray)
                        Spacer()
                    }
                }.padding(.horizontal)
                Spacer()
                Image(systemName: "square.and.arrow.down")
            }
        }
    }
}

struct CourseMaterialCardView_Previews: PreviewProvider {
    static var previews: some View {
        CourseMaterialCardView()
    }
}
