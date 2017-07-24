//
//  Class.swift
//  Pitch
//
//  Created by James Bean on 3/13/16.
//  Copyright © 2016 James Bean. All rights reserved.
//

import ArithmeticTools

/// Modulo 12 representation of `noteNumber` of `Pitch`.
public struct PitchClass: NoteNumberRepresentable {
    
    // MARK: - Instance Properties
    
    /// Inversion of `PitchClass`.
    public var inversion: PitchClass {
        return PitchClass(12 - noteNumber.value)
    }
    
    /// Value of `PitchClass`.
    public var noteNumber: NoteNumber
    
    // MARK: - Initializers
    
    //// Create a `PitchClass` with a given `noteNumber`.
    public init(noteNumber: NoteNumber) {
        self.noteNumber = noteNumber
    }
}

// FIXME: Override arithmetic to add mod 12

//extension PitchClass: ExpressibleByIntegerLiteral {
//    
//    // MARK: - `ExpressibleByIntegerLiteral`
//    
//    /**
//     Create a `PitchClass` with an `IntegerLiteralType`.
//     
//     **Example:**
//     
//     ```
//     let pitchClass = 49 // => 1.0
//     ```
//     */
//    public init(integerLiteral value: Int) {
//        let newValue = Double(value).truncatingRemainder(dividingBy: 12.0)
//        self.init(noteNumber: NoteNumber(newValue))
//    }
//}
//
//extension PitchClass: ExpressibleByFloatLiteral {
//    
//    // MARK: - `ExpressibleByFloatLiteral`
//    
//    /**
//     Create a `PitchClass` with a `FloatLiteralType`.
//     
//     **Example:**
//     
//     ```
//     let pitchClass = 49.5 // => 1.5
//     ```
//     */
//    public init(floatLiteral value: Double) {
//        let newValue = value.truncatingRemainder(dividingBy: 12.0)
//        self.init(noteNumber: NoteNumber(newValue))
//    }
//}

extension PitchClass: PitchConvertible {
    
    // MARK: - `PitchConvertible`
    
    /**
     Create a `PitchClass` with a `Pitch` object.
     
     **Example:**
     
     ```
     let pitch = Pitch(noteNumber: 65.5)
     PitchClass(pitch) // => 5.5
     ```
     */
    public init(_ pitch: Pitch) {
        self.noteNumber = NoteNumber(
            pitch.noteNumber.value.truncatingRemainder(dividingBy: 12.0)
        )
    }
}
