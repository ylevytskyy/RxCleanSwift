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

// MARK: -  Dependency Injection Container

func dependencyContainer() -> Container {
    return Application.shared.container
}

// MARK: - Application

final class Application {
    static let shared = Application()
    
    /// Dependency Injection Container
    let container = Container() { container in
        container.register(MainNavigatorType.self) { _ in
            MainNavigator()
        }
    }
    
    private init() {
        QorumLogs.enabled = true
    }
}

// MARK: - Implementation

extension Application {
    func configureMainInterface(in window: UIWindow) {
        let navigator = dependencyContainer().resolve(MainNavigatorType.self)!
        
        window.rootViewController = navigator.navigationController
        
        _ = navigator.toMain()
    }
}
