//
//  MainFlow.swift
//  Application
//
//  Created by Yuriy Levytskyy on 9/22/18.
//  Copyright © 2018 Yuriy Levytskyy. All rights reserved.
//

import RxSwift
import RxFlow
import QorumLogs

// MARK: - MainFlow

final class MainFlow {
    private let storyBoard = UIStoryboard(name: "Main", bundle: nil)
    private let viewController: MainViewController
    private let window: UIWindow
    
    init(window: UIWindow) {
        self.viewController = storyBoard.instantiateViewController(withIdentifier: MainViewController.storyBoardID) as! MainViewController
        self.window = window
    }
}

// MARK: - Flow

extension MainFlow : Flow {
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
        }
    }
}

// MARK: - Implementation

extension MainFlow {
    private func navigateToLoginScreen () -> NextFlowItems {
        // Navigate screens
        let flow = LoginFlow(window: window)
        Flows.whenReady(flow1: flow) { [unowned self] root in
            self.window.rootViewController = root
        }
        // Next flow item
        return NextFlowItems.one(flowItem: NextFlowItem(nextPresentable: flow, nextStepper: OneStepper(withSingleStep: Step.login)))
    }
    
    private func navigateToMainScreen () -> NextFlowItems {
        // Navigate screens
        self.window.rootViewController = viewController
        // Next flow item
        return NextFlowItems.one(flowItem: NextFlowItem(nextPresentable: viewController, nextStepper: viewController))
    }
}
