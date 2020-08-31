//
//  TransferSuccessView.swift
//  StudentKit
//
//  Created by Munyaradzi Gordon Muneka on 31/8/2020.
//  Copyright © 2020 Munyaradzi Gordon Muneka. All rights reserved.
//

import SwiftUI

struct TransferSuccessView: View {
    var body: some View {
        VStack{
            VStack(spacing: 40){
                VStack(alignment: .center, spacing: 8){
                    Image("profile")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 240)
                        .clipShape(Circle())
                    Spacer()
                        .frame(height: 8)
                    Text("Munyaradzi Gordon Muneka")
                    Text("C19136535V")
                }
                HStack(alignment: .center, spacing: 8){
                    VStack(alignment: .leading, spacing: 16) {
                        HStack{
                            Text("FROM")
                                .foregroundColor(Color.gray)
                            Spacer()
                        }
                        Text("MAIN\nACCOUNT")
                    }
                    .padding(16)
                    .frame(width: 160)
                    .background(RoundedRectangle(cornerRadius: 16).stroke(Color.gray))
                    Spacer()
                    VStack(alignment: .leading, spacing: 16) {
                        HStack{
                            Text("FROM")
                                .foregroundColor(Color.white)
                            Spacer()
                        }
                        Text("MAIN\nACCOUNT")
                            .foregroundColor(Color.white)
                    }
                    .padding(16)
                    .frame(width: 160)
                    .background(RoundedRectangle(cornerRadius: 16).fill(Color.green))
                }
                VStack(alignment: .center, spacing: 16){
                    HStack{
                        Text("Amount")
                        Spacer()
                        Text("ZWL 4000")
                    }
                    HStack{
                        Text("Main balance")
                        Spacer()
                        Text("ZWL 5000")
                    }
                    HStack{
                        Text("Canteen balance")
                        Spacer()
                        Text("ZWL 2200")
                    }
                }
                VStack(alignment: .leading, spacing: 16){
                    NavigationLink(destination: BursaryMainView()) {
                        Text("Done")
                            .foregroundColor(Color.white)
                            .frame(maxWidth: .infinity)
                            .frame(height: 40)
                            .background(Color.green)
                            .cornerRadius(8)
                    }
                }
            }.padding()
            Spacer()
        }.navigationBarTitle(Text("Transfer Success"))
    }
}

struct TransferSuccessView_Previews: PreviewProvider {
    static var previews: some View {
        TransferSuccessView()
    }
}
