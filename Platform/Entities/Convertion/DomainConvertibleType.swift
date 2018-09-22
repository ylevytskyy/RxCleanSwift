//
//  DomainConvertibleType.swift
//  Platform
//
//  Created by Yuriy Levytskyy on 9/22/18.
//  Copyright © 2018 Yuriy Levytskyy. All rights reserved.
//

import Foundation

// MARK: - DomainConvertibleType

protocol DomainConvertibleType {
    associatedtype DomainType
    
    func asDomain() -> DomainType
}
