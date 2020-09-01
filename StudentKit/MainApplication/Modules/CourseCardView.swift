//
//  CourseCardView.swift
//  StudentKit
//
//  Created by Munyaradzi Gordon Muneka on 29/8/2020.
//  Copyright © 2020 Munyaradzi Gordon Muneka. All rights reserved.
//

import SwiftUI

struct CourseCardView: View {
    let colors: [Color] = [.blue, .orange, .purple, .green, .gray, .red]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(spacing: 24){
                ForEach(0..<6){i in
                    NavigationLink(destination: CourseView(name: displayData[i].title)){
                        VStack{
                            Image(systemName: displayData[i].image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 56, height: 56, alignment: .center)
                                .foregroundColor(self.colors[i])
                            Text(displayData[i].title)
                                .font(.footnote)
                                .foregroundColor(Color.black)
                        }
                    }
                }
            }.frame(maxWidth: .infinity)
            .padding(.horizontal, 16)
        }
        
    }
}

struct CourseCardView_Previews: PreviewProvider {
    static var previews: some View {
        CourseCardView()
    }
}
