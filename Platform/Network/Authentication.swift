//
//  Authentication.swift
//  Platform
//
//  Created by Yuriy Levytskyy on 9/22/18.
//  Copyright © 2018 Yuriy Levytskyy. All rights reserved.
//

import RxSwift

// MARK: - AuthenticationType

protocol AuthenticationType {
    var authenticationKey: String? { get }
    
    func login(username: String, password: String) -> Observable<Void>
}

// MARK: - Authentication

struct Authentication {
    private(set) var authenticationKey: String?
}

// MARK: - AuthenticationType

extension Authentication : AuthenticationType {
    func login(username: String, password: String) -> Observable<Void> {
        fatalError()
    }
}
