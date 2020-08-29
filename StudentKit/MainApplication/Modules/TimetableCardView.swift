//
//  TimetableCardView.swift
//  StudentKit
//
//  Created by Munyaradzi Gordon Muneka on 30/8/2020.
//  Copyright © 2020 Munyaradzi Gordon Muneka. All rights reserved.
//

import SwiftUI

struct TimetableCardView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Up next")
                .font(.headline)
                .foregroundColor(Color.orange)
                .padding(.vertical, 8)
            Text("CISS 201")
                .foregroundColor(Color.black)
            Text("13:45 - 15:45")
                .foregroundColor(Color.gray)
            HStack{
                Text("Lecture theatre")
                    .foregroundColor(Color.gray)
                    .padding(.vertical, 8)
                Spacer()
            }
            
        }
        .padding(8)
        .frame(width: 240)
        .background(RoundedRectangle(cornerRadius: 16).fill(Color(hue: 0.594, saturation: 0.0, brightness: 0.95)))
    }
}

struct TimetableCardView_Previews: PreviewProvider {
    static var previews: some View {
        TimetableCardView()
    }
}
