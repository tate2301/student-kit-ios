//
//  VirtualClassroomsCardView.swift
//  StudentKit
//
//  Created by Munyaradzi Gordon Muneka on 30/8/2020.
//  Copyright © 2020 Munyaradzi Gordon Muneka. All rights reserved.
//

import SwiftUI

struct VirtualClassroomsCardView: View {
    var body: some View {
        VStack(alignment: .leading){
            VStack(alignment: .leading){
                Text("Database systems")
                    .font(.headline)
                    .foregroundColor(Color.white)
                Text("12 August 2020")
                    .foregroundColor(Color.white)
                Spacer()
                    .frame(height: 48)
                HStack{
                    Text("Munyaradzi Gordon Muneka")
                        .foregroundColor(Color.white)
                    Spacer()
                }
            }
            .frame(maxWidth: .infinity)
        }
        .padding(16)
        .frame(maxWidth: .infinity)
        .background(RoundedRectangle(cornerRadius: 16).fill(Color.gray))
    }
}

struct VirtualClassroomsCardView_Previews: PreviewProvider {
    static var previews: some View {
        VirtualClassroomsCardView()
    }
}
