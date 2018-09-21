//
//  SharedSequenceConvertibleType+Extensions.swift
//  Common
//
//  Created by Yuriy Levytskyy on 9/21/18.
//  Copyright © 2018 Yuriy Levytskyy. All rights reserved.
//

import RxSwift
import RxCocoa

// MARK: - SharedSequenceConvertibleType

public extension SharedSequenceConvertibleType {
    public func toVoid() -> SharedSequence<SharingStrategy, Void> {
        return map { _ in }
    }
}
