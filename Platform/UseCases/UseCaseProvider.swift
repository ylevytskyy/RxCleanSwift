//
//  UseCaseProvider.swift
//  Platform
//
//  Created by Yuriy Levytskyy on 9/22/18.
//  Copyright © 2018 Yuriy Levytskyy. All rights reserved.
//

import Swinject
import Domain

class UseCaseProvider {
    private let stack = Stack()
    private let container = Container { container in
        container.register(AuthenticationType.self) { _ in
            Authentication()
        }
        container.register(Repository<Model>.self) { _ in
            Repository<Model>()
        }
        container.register(Network<Model>.self) { _ in
            Network<Model>()
        }
    }
}

extension UseCaseProvider: UseCaseProviderType {
    func makeUseCase() -> UseCaseType {
        return UseCase(container: container)
    }
}
