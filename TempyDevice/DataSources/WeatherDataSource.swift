//
//  WeatherDataSource.swift
//  TempyDevice
//
//  Created by Hashem Aboonajmi on 9/19/20.
//  Copyright © 2020 Hashem Aboonajmi. All rights reserved.
//

import Foundation

public protocol TempratureDataSource {
    func getTemprature(completion: @escaping (Double?, Error?) -> Void)
}
