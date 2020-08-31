//
//  VerifyInternalTransfer.swift
//  StudentKit
//
//  Created by Munyaradzi Gordon Muneka on 31/8/2020.
//  Copyright © 2020 Munyaradzi Gordon Muneka. All rights reserved.
//

import SwiftUI

struct VerifyInternalTransfer: View {
    @State var verificationPin: String = ""
    var body: some View {
        VStack{
            VStack{
                VStack(alignment: .center){
                    Text("Amount")
                        .font(.headline)
                    TextField("ZWL", text: $verificationPin)
                        .multilineTextAlignment(.center)
                    Divider()
                        .frame(width: 160)
                }
                VStack{
                    Text("AVAILABLE: $9000")
                        .foregroundColor(.gray)
                    Spacer()
                        .frame(height: 24)
                    Text("We will send a verification code to your mobile number to confirm this action.")
                        .foregroundColor(.gray)
                    Spacer()
                    .frame(height: 24)
                    NavigationLink(destination: InternalTransferView()) {
                        Text("Perform transaction")
                            .foregroundColor(Color.white)
                            .frame(maxWidth: .infinity)
                            .frame(height: 40)
                            .background(Color.blue)
                            .cornerRadius(8)
                    }
                }
            }.padding()
            Spacer()
        }
    }
}

struct VerifyInternalTransfer_Previews: PreviewProvider {
    static var previews: some View {
        VerifyInternalTransfer()
    }
}
