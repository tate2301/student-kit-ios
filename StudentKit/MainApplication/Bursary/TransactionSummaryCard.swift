//
//  TransactionSummaryCard.swift
//  StudentKit
//
//  Created by Munyaradzi Gordon Muneka on 31/8/2020.
//  Copyright © 2020 Munyaradzi Gordon Muneka. All rights reserved.
//

import SwiftUI

struct TransactionSummaryCard: View {
    var body: some View{
        VStack(spacing: 8){
            HStack{
                Text("Fees payment")
                Spacer()
                Text("$300")
            }
            HStack{
                Text("Yesterday")
                    .foregroundColor(.gray)
                Spacer()
                Text("$9000")
                    .foregroundColor(.gray)
            }
            Divider()
        }
    }
}

struct TransactionSummaryCard_Previews: PreviewProvider {
    static var previews: some View {
        TransactionSummaryCard()
    }
}
