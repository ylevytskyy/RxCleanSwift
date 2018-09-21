//
//  UseCaseProviderType.swift
//  Domain
//
//  Created by Yuriy Levytskyy on 9/22/18.
//  Copyright © 2018 Yuriy Levytskyy. All rights reserved.
//

import Foundation

// MARK: - UseCaseProviderType

public protocol UseCaseProviderType {
    func makeUseCase() -> UseCaseType
}
