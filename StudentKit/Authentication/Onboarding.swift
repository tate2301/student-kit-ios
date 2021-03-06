//
//  Onboarding.swift
//  StudentKit
//
//  Created by Munyaradzi Gordon Muneka on 28/8/2020.
//  Copyright © 2020 Munyaradzi Gordon Muneka. All rights reserved.
//
/*
 Button(action: {
    self.showSecondView.toggle()
}){
   Text("Get started")
}.sheet(isPresented: $showSecondView){
    SecondView(message: self.message)
}
 */
import SwiftUI

struct Onboarding: View {
    @State private var showSecondView = false
    var body: some View {
        VStack{
            Spacer()
            HStack{
                Text("Experience the new\nstudent kit")
                    .font(.title)
                Spacer()
            }
            Spacer()
            HStack{
                Spacer()
                /*NavigationLink(destination: LogInView()) {
                    Text("Get started")
                        .foregroundColor(Color.black)
                    Spacer()
                        .frame(width: 16)
                    Image(systemName: "chevron.right")
                        .foregroundColor(Color.black)
                }
                .frame(width: 160, height: 40)
                .background(Color(hue: 0.594, saturation: 0.0, brightness: 0.87))
                .cornerRadius(8)
                .padding(.vertical, 64)
 */
                Button(action: {
                    self.showSecondView.toggle()
                }){
                   Text("Get started")
                }.sheet(isPresented: $showSecondView){
                    LogInView()
                }
            }
        }
        .padding()
    }
}

struct Onboarding_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding()
    }
}
