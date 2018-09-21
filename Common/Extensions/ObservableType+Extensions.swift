//
//  ObservableType+Extensions.swift
//  Common
//
//  Created by Yuriy Levytskyy on 9/21/18.
//  Copyright © 2018 Yuriy Levytskyy. All rights reserved.
//

import RxSwift

// MARK: - ObservableType

public extension ObservableType {
    public func toVoid() -> Observable<Void> {
        return map { _ in }
    }
}
