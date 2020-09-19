//
//  PerformancePresenter.swift
//  TempyDevice
//
//  Created by Hashem Aboonajmi on 9/19/20.
//  Copyright © 2020 Hashem Aboonajmi. All rights reserved.
//

import Foundation

class PerformancePresenter {
    
    let performanceUseCase: CheckACPerformance
    
    init(performanceUseCase: CheckACPerformance) {
        self.performanceUseCase = performanceUseCase
    }
    
    func analyzeBasedOnTemprature(targetTemprature: Double = 25, completion: @escaping(String) -> Void)
    {
        performanceUseCase.analyzePerformance(targetTemprature: targetTemprature).done { performancePercentage in
            completion("The AC performance is: \(performancePercentage)")
        }.catch { error in
            
        }
    }
}
