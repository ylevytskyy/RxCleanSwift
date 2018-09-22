//
//  Application.swift
//  Application
//
//  Created by Yuriy Levytskyy on 9/21/18.
//  Copyright © 2018 Yuriy Levytskyy. All rights reserved.
//

import UIKit
import QorumLogs
import Swinject
import IQKeyboardManagerSwift
import RxSwift
import RxFlow

// MARK: -  Dependency Injection Container

func dependencyContainer() -> Container {
    return Application.shared.container
}

// MARK: - Application

final class Application {
    static let shared = Application()
    
    /// Dependency Injection Container
    let container = Container() { container in
        // TODO:
    }
    
    private let coordinator = Coordinator()
    
    private init() {
        QorumLogs.enabled = true
        IQKeyboardManager.sharedManager().enable = true
    }
}

// MARK: - Implementation

extension Application {
    func configureMainInterface(in window: UIWindow) {
        // Configure navigator
        let flow = LoginFlow(window: window)
        Flows.whenReady(flows: [flow]) { root in
            window.rootViewController = root.first!
        }
        
        coordinator.coordinate(flow: flow, withStepper: OneStepper(withSingleStep: Step.login))
    }
}
