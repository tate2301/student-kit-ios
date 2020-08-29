//
//  CoursesData.swift
//  StudentKit
//
//  Created by Munyaradzi Gordon Muneka on 29/8/2020.
//  Copyright © 2020 Munyaradzi Gordon Muneka. All rights reserved.
//

import Foundation

struct CoursesData: Identifiable{
    var id: Int
    var image: String
    var title: String
}

var displayData: [CoursesData] = [
    CoursesData(id: 1, image: "book.circle.fill", title: "CUIT-101"),
    CoursesData(id: 2, image: "book.circle.fill", title: "CUIT-102"),
    CoursesData(id: 3, image: "book.circle.fill", title: "CUIT-103"),
    CoursesData(id: 4, image: "book.circle.fill", title: "CUIT-104"),
    CoursesData(id: 5, image: "book.circle.fill", title: "CUIT-105"),
    CoursesData(id: 6, image: "book.circle.fill", title: "CUIT-106"),
    CoursesData(id: 7, image: "book.circle.fill", title: "CUIT-107"),
    CoursesData(id: 8, image: "book.circle.fill", title: "CUIT-108"),
    CoursesData(id: 9, image: "book.circle.fill", title: "CUIT-109"),
    CoursesData(id: 10, image: "book.circle.fill", title: "CUIT-110")
]

