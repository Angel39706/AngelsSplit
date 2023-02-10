//
//  Split.swift
//  AngelsSplit
//
//  Created by Angel Martinez on 1/20/23.
//

import Foundation

struct Split: Decodable, Identifiable {
    let id: Int
    let info: String
    let description: String
}

struct SplitResponse: Decodable {
    let request: [Split]
}

struct MockData {
    
    static let sampleSplit =  Split(id: 0001, info: "Calf Raises", description: "4 x 10-12 (2 sec down & 1 sec pause top)")
    
    static let splits = [sampleSplit, sampleSplit, sampleSplit]
}
