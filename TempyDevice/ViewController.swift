//
//  ViewController.swift
//  TempyDevice
//
//  Created by Hashem Aboonajmi on 9/19/20.
//  Copyright © 2020 Hashem Aboonajmi. All rights reserved.
//

import UIKit
protocol WeatherAPI {
    
}

class ViewController: UIViewController {

    let presneter: PerformancePresenter
    init(presenter: PerformancePresenter) {
        self.presneter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    


}

