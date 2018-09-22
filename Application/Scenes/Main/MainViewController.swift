//
//  MainViewController.swift
//  Application
//
//  Created by Yuriy Levytskyy on 9/21/18.
//  Copyright © 2018 Yuriy Levytskyy. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa
import RxFlow

// MARK: - MainViewController

class MainViewController: UIViewController {
    @IBOutlet weak var logoffButton: UIButton!
    
    static let storyBoardID = "MainViewController"
    
    private let viewModel = MainViewModel()
    private let stepsRelay = PublishRelay<RxFlow.Step>()
}

// MARK: - UIViewController

extension MainViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bindViewModel()
    }
}

// MARK: - Implementation

extension MainViewController {
    private func bindViewModel() {
        let logoffTrigger = logoffButton.rx.tap.asDriver()
        let input = MainViewModel.Input(logoffTrigger: logoffTrigger)
        
        let output = viewModel.transform(input: input)
        output.stepper
            .asObservable()
            .bind(to: stepsRelay)
            .disposed(by: rx.disposeBag)
    }
}

// MARK: - Stepper

extension MainViewController : Stepper {
    var steps: Observable<RxFlow.Step> { return stepsRelay.asObservable() }
}
