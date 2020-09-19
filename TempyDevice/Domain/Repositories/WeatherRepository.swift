//
//  WeatherRepository.swift
//  TempyDevice
//
//  Created by Hashem Aboonajmi on 9/19/20.
//  Copyright © 2020 Hashem Aboonajmi. All rights reserved.
//

import Foundation
import PromiseKit

public protocol IWeatherRepository {
    
    func getOutSideTemprature() -> Promise<Double>
    func getInsideTemprature() -> Promise<Double>
}


public class WeatherRepository: IWeatherRepository {
   
    let outsideWeatherSource: TempratureDataSource
    let insideWeatherDataSource: TempratureDataSource
    
    init(outsideWeatherSource: TempratureDataSource, insideWeatherDataSource: TempratureDataSource) {
        self.outsideWeatherSource = outsideWeatherSource
        self.insideWeatherDataSource = insideWeatherDataSource
    }

    public func getOutSideTemprature() -> Promise<Double> {
        return Promise {
            self.outsideWeatherSource.getTemprature(completion: $0.resolve)
        }
    }
       
   public func getInsideTemprature() -> Promise<Double> {
        return Promise { seal in
            self.insideWeatherDataSource.getTemprature(completion: seal.resolve)
        }
   }
       
}
