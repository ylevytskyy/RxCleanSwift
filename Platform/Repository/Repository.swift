//
//  Repository.swift
//  Platform
//
//  Created by Yuriy Levytskyy on 9/22/18.
//  Copyright © 2018 Yuriy Levytskyy. All rights reserved.
//

import RxSwift

protocol RepositoryType {
    associatedtype Entity
    
    func insert(_ entity: Entity) -> Observable<Void>
    func query() -> Observable<[Entity]>
    func delete(_ entity: Entity) -> Observable<Void>
}

class Repository<Entity> {
}

extension Repository : RepositoryType {
    func insert(_ entity: Entity) -> Observable<Void> {
        fatalError()
    }
    
    func query() -> Observable<[Entity]> {
        fatalError()
    }
    
    func delete(_ entity: Entity) -> Observable<Void> {
        fatalError()
    }
}
