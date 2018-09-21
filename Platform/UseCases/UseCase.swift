//
//  UseCase.swift
//  Platform
//
//  Created by Yuriy Levytskyy on 9/22/18.
//  Copyright © 2018 Yuriy Levytskyy. All rights reserved.
//

import Swinject
import Domain

// MARK: - UseCase

class UseCase {
    private let container: Container
    
    init(container: Container) {
        self.container = container
    }
}

// MARK: - UseCaseType

extension UseCase: UseCaseType {
}
