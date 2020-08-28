//
//  ForgotPasswordView.swift
//  StudentKit
//
//  Created by Munyaradzi Gordon Muneka on 28/8/2020.
//  Copyright © 2020 Munyaradzi Gordon Muneka. All rights reserved.
//

import SwiftUI

struct ForgotPasswordView: View {
    @State var username: String = ""
    var body: some View {
        VStack{
            Spacer()
                .frame(height: 16)
            VStack{
                VStack{
                    Text("If you have forgotten your password please fill in your registration number and we will send you a code soon")
                        .multilineTextAlignment(.leading)
                    .lineLimit(nil)
                }
                Spacer()
                    .frame(height: 32)
                VStack{
                    TextField("Username", text: $username)
                        .padding(.horizontal, 16)
                    Divider()
                }
            }
            Spacer()
                .frame(height: 16)
            VStack{
                NavigationLink(destination: LogInView()) {
                   Text("Continue")
                       .foregroundColor(Color.white)
                       .frame(maxWidth: .infinity)
                       .frame(height: 40)
                       .background(Color.blue)
                       .cornerRadius(8)
                }
            }
            Spacer()
        }
        .padding()
        .navigationBarTitle(Text("Forgot password?"), displayMode: .inline)
        
    }
}

struct ForgotPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordView()
    }
}
