//
//  BursaryMainView.swift
//  StudentKit
//
//  Created by Munyaradzi Gordon Muneka on 29/8/2020.
//  Copyright © 2020 Munyaradzi Gordon Muneka. All rights reserved.
//

import SwiftUI

struct BursaryMainView: View {
    @State var CurrentPage = 0
    var body: some View {
        NavigationView{
            VStack{
                ZStack{
                    if CurrentPage == 0{
                        Image(systemName: "book")
                    }else if CurrentPage == 1{
                        Image(systemName: "person")
                    }else{
                        Image(systemName: "folder")
                    }
                }
                pageControl(current: CurrentPage)
            }.navigationBarTitle(Text("Bursary"))
        }
    }
}

struct BursaryMainView_Previews: PreviewProvider {
    static var previews: some View {
        BursaryMainView()
    }
}

struct pageControl : UIViewRepresentable{
    var current = 0
    
    func makeUIView(context: UIViewRepresentableContext<pageControl>) -> UIPageControl{
        let page = UIPageControl()
        page.currentPageIndicatorTintColor = .black
        page.numberOfPages = 3
        page.pageIndicatorTintColor = .gray
        return page
    }
    
    func updateUIView(_ uiView: UIPageControl, context: UIViewRepresentableContext<pageControl>) {
        uiView.currentPage = current
    }
}
