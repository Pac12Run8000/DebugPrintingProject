//
//  Entre.swift
//  LazyImageInTableView
//
//  Created by Norbert Grover on 11/27/22.
//

import Foundation


class Entre {
    var dish:String? = nil
    var amountOfServings:Int? = nil
    var menu:Menu? = nil
    
    deinit {
        print("The menu has been removed from the entre.")
    }
}
