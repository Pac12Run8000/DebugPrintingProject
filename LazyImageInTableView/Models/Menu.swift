//
//  Menu.swift
//  LazyImageInTableView
//
//  Created by Norbert Grover on 11/27/22.
//

import Foundation


class Menu {
    weak var entre:Entre? = nil
    var drink:String? = nil
    var appetizer:String? = nil
    
    deinit {
        print("The entre has been removed from the menu.")
    }
}
