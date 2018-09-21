//
//  UseCaseProvider.swift
//  Platform
//
//  Created by Yuriy Levytskyy on 9/22/18.
//  Copyright © 2018 Yuriy Levytskyy. All rights reserved.
//

import Foundation
import Domain

class UseCaseProvider {
    private let stack = Stack()
}

extension UseCaseProvider: UseCaseProviderType {
    func makeUseCase() -> UseCaseType {
        return UseCase()
    }
}
