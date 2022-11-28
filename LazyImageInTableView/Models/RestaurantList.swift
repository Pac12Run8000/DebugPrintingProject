//
//  RestaurantList.swift
//  LazyImageInTableView
//
//  Created by Michelle Grover on 11/18/22.
//

import Foundation

// MARK: - WelcomeElement
struct Restaurant: Codable {
    let name, address, price: String
    let imageURLString: String

    enum CodingKeys: String, CodingKey {
        case name, address, price
        case imageURLString = "imageUrlString"
    }
}

typealias RestaurantList = [Restaurant]
/*
extension Restaurant:CustomStringConvertible, CustomDebugStringConvertible {
    var debugDescription: String {
        var myDescription = "[name:\(name)] "
        let mirror = Mirror(reflecting: self)
        myDescription += mirror.children.compactMap { (args) -> String? in
            let (label, value) = args
            guard let propertyName = label else {return nil}
            return "name:\(propertyName), value: \(value)"
        }.joined(separator: ", ")
        return myDescription
    }
    
    var description: String {
        return "name: \(name)"
    }
    
    
}
*/
