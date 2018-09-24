//
//  LoginViewModel.swift
//  Application
//
//  Created by Yuriy Levytskyy on 9/22/18.
//  Copyright © 2018 Yuriy Levytskyy. All rights reserved.
//

import RxSwift
import RxCocoa
import RxFlow
import Common

// MARK: - LoginViewModel

class LoginViewModel {
}

// MARK: - ViewModelType

extension LoginViewModel: ViewModelType {
    // MARK: - Input
    struct Input {
        let username: Driver<String?>
        let password: Driver<String?>
        let loginTrigger: Driver<Void>
    }
    
    // MARK: - Output
    struct Output {
        let stepper: Driver<RxFlow.Step>
    }
    
    // MARK: - transform
    func transform(input: Input) -> Output {
        let stepper = input.loginTrigger
            .map { _ in Step.main as RxFlow.Step }
        
        return Output(
            stepper:stepper)
    }
}

