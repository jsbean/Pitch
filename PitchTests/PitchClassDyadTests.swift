//
//  PitchClassDyadTests.swift
//  Pitch
//
//  Created by Jeremy Corren on 12/7/16.
//  Copyright © 2016 James Bean. All rights reserved.
//

import XCTest
@testable import Pitch

class PitchClassDyadTests: XCTestCase {

    func testInterval() {
        let pcDyad = PitchClassDyad(PitchClass(3.0), PitchClass(7.0))
        XCTAssertEqual(pcDyad.interval, 4.0)
    }
    
    func testEquality() {
        let pcDyad1 = PitchClassDyad(PitchClass(3.0), PitchClass(7.0))
        let pcDyad2 = PitchClassDyad(PitchClass(3.0), PitchClass(7.0))
        XCTAssert(pcDyad1 == pcDyad2)
    }
}