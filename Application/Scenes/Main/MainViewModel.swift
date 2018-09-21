//
//  MainViewModel.swift
//  Application
//
//  Created by Yuriy Levytskyy on 9/22/18.
//  Copyright © 2018 Yuriy Levytskyy. All rights reserved.
//

import RxSwift

// MARK: - MainViewModel

class MainViewModel {
}

// MARK: - ViewModelType

extension MainViewModel: ViewModelType {
    // MARK: - Input
    struct Input {
    }
    
    // MARK: - Output
    struct Output {
    }
    
    // MARK: - transform
    func transform(input: MainViewModel.Input) -> MainViewModel.Output {
        return Output()
    }
}

