//
//  LogInView.swift
//  StudentKit
//
//  Created by Munyaradzi Gordon Muneka on 28/8/2020.
//  Copyright © 2020 Munyaradzi Gordon Muneka. All rights reserved.
//

import SwiftUI

struct LogInView: View {
    @State var username: String = ""
    @State var password: String = ""
    var body: some View {
        VStack{
            Spacer()
            VStack{
                VStack{
                    Text("Sign in")
                        .font(.title)
                        .fontWeight(.regular)
                        .padding()
                    Text("Welcome back,")
                        .padding(.vertical, 4)
                    Text("Sign in to continue.")
                }
                Spacer()
                    .frame(height: 32)
                VStack{
                    TextField("Username", text: $username)
                        .padding(.horizontal, 16)
                    Divider()
                    Spacer()
                        .frame(height: 40)
                    HStack{
                        TextField("Password", text: $password)
                            .padding(.horizontal, 16)
                        Spacer()
                        NavigationLink(destination: ForgotPasswordView()){
                            Text("Forgot password?")
                                .foregroundColor(Color.blue)
                        }
                    }
                    Divider()
                }
            }
            Spacer()
            VStack{
                NavigationLink(destination: ContentView()) {
                   Text("Sign in")
                       .foregroundColor(Color.white)
                       .frame(maxWidth: .infinity)
                       .frame(height: 40)
                       .background(Color.blue)
                       .cornerRadius(8)
                }
            }
            .padding(.vertical, 64)
        }.padding()
        .navigationBarBackButtonHidden(true)
    }
}

struct LogInView_Previews: PreviewProvider {
    static var previews: some View {
        LogInView()
    }
}
