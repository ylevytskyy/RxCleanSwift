//
//  Network.swift
//  Platform
//
//  Created by Yuriy Levytskyy on 9/22/18.
//  Copyright © 2018 Yuriy Levytskyy. All rights reserved.
//

import RxSwift

// MARK: - NetworkType

protocol NetworkType {
    associatedtype Entity
    
    func fetch(parameters: [String: Any]?) -> Observable<[Entity]>
    func post(entity: Entity, parameters: [String: Any]?) -> Observable<Void>
    func update(entity: Entity, parameters: [String: Any]?) -> Observable<Void>
}


// MARK: - NetworkType

struct Network<Entity> {
}

extension  Network : NetworkType {
    func fetch(parameters: [String: Any]?) -> Observable<[Entity]> {
        fatalError()
    }
    
    func post(entity: Entity, parameters: [String: Any]?) -> Observable<Void> {
        fatalError()
    }
    
    func update(entity: Entity, parameters: [String: Any]?) -> Observable<Void> {
        fatalError()
    }
}
