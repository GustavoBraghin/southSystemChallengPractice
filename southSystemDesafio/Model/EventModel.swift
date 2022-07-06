//
//  eventModel.swift
//  southSystemDesafio
//
//  Created by Gustavo da Silva Braghin on 05/07/22.
//

import Foundation

struct EventModel: Decodable {
    let date: Double
    let description: String
    let image: String
    let longitude: Double
    let latitude: Double
    let price: Float
    let title: String
    let id: String
}
