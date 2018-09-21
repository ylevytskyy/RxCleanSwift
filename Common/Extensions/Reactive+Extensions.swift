//
//  Reactive+Extensions.swift
//  Common
//
//  Created by Yuriy Levytskyy on 9/21/18.
//  Copyright © 2018 Yuriy Levytskyy. All rights reserved.
//

import RxSwift

private var disposeBagKey: Int8 = 0

// MARK: - Reactive

public extension Reactive where Base : NSObject {
    public var disposeBag: DisposeBag {
        if let bag = objc_getAssociatedObject(base, &disposeBagKey) as? DisposeBag {
            return bag
        }
        
        let bag = DisposeBag()
        objc_setAssociatedObject(base, &disposeBagKey, bag, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN)
        
        return bag
    }
}
