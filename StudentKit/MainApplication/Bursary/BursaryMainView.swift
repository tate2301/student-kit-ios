//
//  BursaryMainView.swift
//  StudentKit
//
//  Created by Munyaradzi Gordon Muneka on 29/8/2020.
//  Copyright © 2020 Munyaradzi Gordon Muneka. All rights reserved.
//

import SwiftUI

struct BursaryMainView: View {
    @State var selectedPage: Int = 1
    @State var slideGesture = CGSize.zero
    @State var slideOne = false
    @State var slideOnePrevious = false
    @State var slideTwo = false
    @State var slideTwoPrevious = false
    var body: some View {
        NavigationView{
            ZStack{
                CanteenView()
                    .offset(x: slideGesture.width)
                    .offset(x: slideOne ? 0 : 500)
                    .offset(x: slideOnePrevious ? 500 : 0)
                    .offset(x: slideTwo ? -500 : 0)
                    .animation(.spring())
                    .gesture(
                            DragGesture().onChanged{ value in
                                self.slideGesture = value.translation
                            }
                            .onEnded{ value in
                                if self.slideGesture.width < -150{
                                    self.slideOne = true
                                }
                                if self.slideGesture.width > 150{
                                    self.slideOnePrevious = true
                                    self.slideOne = false
                                }
                                self.slideGesture = .zero
                            }
                    )
                
                
                MainBalanceView()
                    .offset(x: slideGesture.width)
                    .offset(x: slideOne ? -500 : 0)
                    .animation(.spring())
                    
                    .gesture(
                        DragGesture().onChanged{ value in
                            self.slideGesture = value.translation
                        }
                        .onEnded{ value in
                            if self.slideGesture.width < -150{
                                self.slideOne = true
                                self.slideOnePrevious = false
                            }
                            
                            self.slideGesture = .zero
                        }
                    )
            }
            .navigationBarTitle(Text("Bursary"))
        }
    }
}

struct BursaryMainView_Previews: PreviewProvider {
    static var previews: some View {
        BursaryMainView()
    }
}
