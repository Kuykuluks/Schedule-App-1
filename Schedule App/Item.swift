//
//  Item.swift
//  Schedule App
//
//  Created by Leo dos Remedios on 6/3/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
