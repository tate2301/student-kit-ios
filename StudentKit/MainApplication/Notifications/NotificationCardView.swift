//
//  NotificationCardView.swift
//  StudentKit
//
//  Created by Munyaradzi Gordon Muneka on 30/8/2020.
//  Copyright © 2020 Munyaradzi Gordon Muneka. All rights reserved.
//

import SwiftUI

struct NotificationCardView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8){
            Text("All those who need their course work to be corrected to visit my office by day end of tommorrow")
            Text("Posted 06 July 2019")
                .foregroundColor(Color.gray)
            Divider()
        }
    }
}

struct NotificationCardView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationCardView()
    }
}
