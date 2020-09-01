//
//  FullTimeTableCardView.swift
//  StudentKit
//
//  Created by Munyaradzi Gordon Muneka on 1/9/2020.
//  Copyright © 2020 Munyaradzi Gordon Muneka. All rights reserved.
//

import SwiftUI

struct FullTimeTableCardView: View {
    let colors: [Color] = [.blue, .orange, .purple, .green, .gray, .red]
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack{
                HStack{
                    VStack(alignment: .trailing){
                        ForEach(7..<21){i in
                            if i <= 9{
                                Text("0\(i):00")
                                    .foregroundColor(Color.gray)
                                Spacer()
                                    .frame(height: 40)
                            }else{
                                Text("\(i):00")
                                    .foregroundColor(Color.gray)
                                Spacer()
                                    .frame(height: 40)
                            }
                        }
                        Spacer()
                            .frame(height: 16)
                    }
                    Spacer()
                        .frame(width: 16)
                    VStack{
                        Spacer()
                            .frame(height: 0)
                        ForEach(0..<6){i in
                            VStack(alignment: .leading) {
                                HStack{
                                    Text("CSIS 201")
                                        .font(.headline)
                                        .foregroundColor(Color.white)
                                    Spacer()
                                    Text("07:00 - 09:00")
                                        .foregroundColor(Color.white)
                                }
                                Spacer()
                                    .frame(height: -8)
                                HStack{
                                    Text("Software Engineering")
                                        .foregroundColor(Color.white)
                                        .padding(.vertical, 8)
                                }
                                Spacer()
                                HStack{
                                    Button(action: {
                                        
                                    })
                                    {
                                        HStack{
                                            Text("Lecture theatre")
                                                .font(.headline)
                                                .foregroundColor(Color.white)
                                            Image(systemName: "arrow.right")
                                                .foregroundColor(.white)
                                        }
                                    }
                                    Spacer()
                                    /*Text("ONGOING")
                                        .padding(.horizontal, 8)
                                        .background(Color.white)
                                        .cornerRadius(4)*/
                                }
                            }
                            .padding()
                            .frame(maxWidth: .infinity)
                            .frame(height: 122)
                            .background(RoundedRectangle(cornerRadius: 8).fill(self.colors[i]))
                            Spacer()
                                .frame(height: 16)
                        }
                    }
                }
                .frame(maxWidth: .infinity)
            }
        }
    }
}

struct FullTimeTableCardView_Previews: PreviewProvider {
    static var previews: some View {
        FullTimeTableCardView()
    }
}
