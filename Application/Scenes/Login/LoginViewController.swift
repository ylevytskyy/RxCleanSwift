//
//  LoginViewController.swift
//  Application
//
//  Created by Yuriy Levytskyy on 9/22/18.
//  Copyright © 2018 Yuriy Levytskyy. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa
import RxFlow

// MARK: - LoginViewController

class LoginViewController : UIViewController {
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    static let storyBoardID = "LoginViewController"
    
    private let viewModel = LoginViewModel()
    private let stepsRelay = PublishRelay<RxFlow.Step>()
}

// MARK: - UIViewController

extension LoginViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bindViewModel()
    }
}

// MARK: - Implementation

extension LoginViewController {
    private func bindViewModel() {
        let input = LoginViewModel.Input(
            username: username.rx.text.asDriver(),
            password: password.rx.text.asDriver(),
            loginTrigger: loginButton.rx.tap.asDriver())
        
        let output = viewModel.transform(input: input)
        output.stepper
            .asObservable()
            .bind(to: stepsRelay)
            .disposed(by: rx.disposeBag)
    }
}

// MARK: - Stepper

extension LoginViewController : Stepper {
    var steps: Observable<RxFlow.Step> { return stepsRelay.asObservable() }
}
