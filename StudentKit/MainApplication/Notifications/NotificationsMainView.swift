//
//  NotificationsMainView.swift
//  StudentKit
//
//  Created by Munyaradzi Gordon Muneka on 29/8/2020.
//  Copyright © 2020 Munyaradzi Gordon Muneka. All rights reserved.
//

import SwiftUI

struct NotificationsMainView: View {
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .leading, spacing: 4){
                    HStack{
                        Text("Get latest news in time")
                            .font(.headline)
                            .padding(.horizontal)
                        Spacer()
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 8)
                    .background(Color(hue: 0.594, saturation: 0.0, brightness: 0.95))
                    
                    NotificationCardView()
                        .padding()
                }
            }.navigationBarTitle(Text("Notifications"))
        }
    }
}

struct NotificationsMainView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsMainView()
    }
}
