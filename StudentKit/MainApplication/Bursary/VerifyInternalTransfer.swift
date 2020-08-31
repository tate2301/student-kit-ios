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
                VStack(alignment: .center, spacing: 16){
                    //Text("Verify transaction")
                        //.font(.headline)
                    Text("Enter the code received on your phone")
                        .foregroundColor(.gray)
                    Spacer()
                        .frame(height: 64)
                    TextField("Enter code here", text: $verificationPin)
                        .multilineTextAlignment(.center)
                    Divider()
                        .frame(width: 160)
                }
                VStack(alignment: .leading, spacing: 16){
                    Spacer()
                        .frame(height: 8)
                    NavigationLink(destination: TransferSuccessView()) {
                        Text("Perform transaction")
                            .foregroundColor(Color.white)
                            .frame(maxWidth: .infinity)
                            .frame(height: 40)
                            .background(Color.blue)
                            .cornerRadius(8)
                    }
                    NavigationLink(destination: InternalTransferView()) {
                        Text("Resend code")
                            .foregroundColor(.black)
                    }
                    
                    Spacer()
                        .frame(height: 16)
                    Text("If you do not have access to your phone number, you will have to .visit the Cash Office to be able to perform this transaction")
                        .foregroundColor(.gray)
                }
            }.padding()
            Spacer()
        }.navigationBarTitle(Text("Verify transaction"))
    }
}

struct VerifyInternalTransfer_Previews: PreviewProvider {
    static var previews: some View {
        VerifyInternalTransfer()
    }
}
