//
//  MainViewModel.swift
//  Application
//
//  Created by Yuriy Levytskyy on 9/22/18.
//  Copyright © 2018 Yuriy Levytskyy. All rights reserved.
//

import RxSwift
import RxCocoa
import RxFlow

// MARK: - MainViewModel

class MainViewModel {
}

// MARK: - ViewModelType

extension MainViewModel: ViewModelType {
    // MARK: - Input
    struct Input {
        let logoffTrigger: Driver<Void>
    }
    
    // MARK: - Output
    struct Output {
        let stepper: Driver<RxFlow.Step>
    }
    
    // MARK: - transform
    func transform(input: Input) -> Output {
        return Output(
            stepper:input.logoffTrigger.map { _ in Step.login })
    }
}
