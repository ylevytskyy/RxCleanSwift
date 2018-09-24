//
//  LoginFlow.swift
//  Application
//
//  Created by Yuriy Levytskyy on 9/22/18.
//  Copyright © 2018 Yuriy Levytskyy. All rights reserved.
//

import RxSwift
import RxFlow
import QorumLogs

// MARK: - LoginFlow

final class LoginFlow {
    private let storyBoard = UIStoryboard(name: "Main", bundle: nil)
    private let viewController: LoginViewController
    private let window: UIWindow
    
    init(window: UIWindow) {
        self.viewController = storyBoard.instantiateViewController(withIdentifier: LoginViewController.storyBoardID) as! LoginViewController
        self.window = window
    }
}

// MARK: - Flow

extension LoginFlow : Flow {
    var root: Presentable {
        return viewController
    }
    
    func navigate(to step: RxFlow.Step) -> NextFlowItems {
        guard let step = step as? Step else { return NextFlowItems.none }

        switch step {
        case .login:
            return navigateToLoginScreen()
        case .main:
            return navigateToMainScreen()
        default:
            return .none
        }
    }
}

// MARK: - Implementation

extension LoginFlow {
    private func navigateToLoginScreen () -> NextFlowItems {
        // Navigate screens
        self.window.rootViewController = viewController
        // Next flow item
        return NextFlowItems.one(flowItem: NextFlowItem(nextPresentable: viewController, nextStepper: viewController))
    }

    private func navigateToMainScreen () -> NextFlowItems {
        // Navigate screens
        let flow = MainFlow(window: window)
        Flows.whenReady(flow1: flow) { [unowned self] root in
            self.window.rootViewController = root
        }
        // Next flow item
        return NextFlowItems.one(flowItem: NextFlowItem(nextPresentable: flow, nextStepper: OneStepper(withSingleStep: Step.main)))
    }
}
