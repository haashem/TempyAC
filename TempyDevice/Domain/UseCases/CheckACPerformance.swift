//
//  CheckACPerformance.swift
//  TempyDevice
//
//  Created by Hashem Aboonajmi on 9/19/20.
//  Copyright © 2020 Hashem Aboonajmi. All rights reserved.
//

import Foundation
import PromiseKit

final class CheckACPerformance {
    
    typealias PerformancePercentage = Int

    let tempratureSource: IWeatherRepository
    init(tempratureSource: IWeatherRepository) {
        self.tempratureSource = tempratureSource
    }
    
    func analyzePerformance(targetTemprature: Double) -> Promise<PerformancePercentage>
    {
        return when(fulfilled: [tempratureSource.getOutSideTemprature(),
                                tempratureSource.getInsideTemprature()])
            .then { (values) -> Promise<Int> in
                let outsideTemprature = values.first!
                let insideTemprature = values.last!
                
                let environmentTempratureDifference = fabs(outsideTemprature - insideTemprature)
                let targetAndInsideTempratureDifference = fabs(insideTemprature - targetTemprature)
                
                return Promise.value(Int(1))
            }
    }
}
