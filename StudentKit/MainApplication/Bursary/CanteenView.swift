//
//  CanteenView.swift
//  StudentKit
//
//  Created by Munyaradzi Gordon Muneka on 31/8/2020.
//  Copyright © 2020 Munyaradzi Gordon Muneka. All rights reserved.
//

import SwiftUI

struct CanteenView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            Spacer()
                .frame(height: 32)
            VStack(spacing: 32){
                VStack(spacing: 16){
                    Text("Canteen balance")
                        .foregroundColor(Color.gray)
                    Text("$9878")
                        .font(.title)
                    
                    NavigationLink(destination: InternalTransferView()) {
                        Text("Internal transfers")
                            .foregroundColor(Color.white)
                            .frame(maxWidth: .infinity)
                            .frame(height: 40)
                            .background(Color.blue)
                            .cornerRadius(8)
                    }
                }
                VStack(spacing: 8){
                    HStack{
                        Text("Transaction summary")
                            .font(.headline)
                        Spacer()
                        Text("View all")
                            .foregroundColor(.blue)
                    }
                    VStack(spacing: 16){
                        ForEach(0..<20){i in
                            TransactionSummaryCard()
                        }
                    }
                }
            }.padding(.horizontal)
        }
    }
}

struct CanteenView_Previews: PreviewProvider {
    static var previews: some View {
        CanteenView()
    }
}
