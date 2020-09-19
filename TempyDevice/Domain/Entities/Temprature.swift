//
//  Temprature.swift
//  TempyDevice
//
//  Created by Hashem Aboonajmi on 9/19/20.
//  Copyright © 2020 Hashem Aboonajmi. All rights reserved.
//

import Foundation

public struct Temprature {
    let outsideTemprature: Double
    let insideTemprature: Double
    
    init(outsideTemprature: Double, insideTemprature: Double) {
        self.outsideTemprature = outsideTemprature
        self.insideTemprature = insideTemprature
    }
}
