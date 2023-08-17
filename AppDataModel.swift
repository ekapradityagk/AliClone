//
//  AppDataModel.swift
//  AliClone
//
//  Created by Aisa Utomo on 04/08/23.
//

import Foundation

struct TestDataModel: Codable {
    let name: String
    let level: String
    let address: String
    let itemdate: String
}


struct Response_ItemSimpleDataModel : Codable {
    var status          : String?
    let data            : [Response_ItemSimpleDataModelData]?
}

struct Response_ItemSimpleDataModelData : Codable, Identifiable {
    let id = UUID()
    let itemName: String?
    let price: String?
    let afterPrice: String?
    let additionalInfo: String?
}
