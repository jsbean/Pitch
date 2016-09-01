//
//  CollectionType.swift
//  ArrayTools
//
//  Created by James Bean on 6/9/16.
//  Copyright © 2016 James Bean. All rights reserved.
//

extension Collection where IndexDistance == Int, Index == Int {
    
    /**
     - returns: All adjacent pairs of elements, if count > 1. Otherwise `nil`.
     */
    public var adjacentPairs: [(Iterator.Element, Iterator.Element)]? {
        guard count > 1 else { return nil }
        return (0 ..< count - 1).map { (self[$0], self[$0 + 1]) }
    }
}
