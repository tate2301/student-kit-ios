//
//  TransportMainView.swift
//  StudentKit
//
//  Created by Munyaradzi Gordon Muneka on 29/8/2020.
//  Copyright © 2020 Munyaradzi Gordon Muneka. All rights reserved.
//

import SwiftUI

struct TransportMainView: View {
    @State var sendAlerts = false
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .leading){
                    VStack(alignment: .leading){
                        Text("Track Routes")
                            .font(.headline)
                        HStack{
                            Toggle(isOn: $sendAlerts){
                                Text("Get notifications when buses going along your route are about to leave campus or are about to get to your picking stations.")
                            }
                        }
                        Spacer()
                            .frame(height: 24)
                        Text("Your bus stop can be configured in preferences under Utilities.")
                            .foregroundColor(Color.gray)
                            .font(.body)
                    }.padding()
                    
                    VStack(alignment: .leading){
                        Text("My route")
                            .font(.headline)
                        
                    }.padding()
                }.frame(maxWidth: .infinity)
                
            }.navigationBarTitle(Text("Transport"))
        }
    }
}

struct TransportMainView_Previews: PreviewProvider {
    static var previews: some View {
        TransportMainView()
    }
}
