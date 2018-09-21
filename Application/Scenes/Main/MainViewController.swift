//
//  MainViewController.swift
//  Application
//
//  Created by Yuriy Levytskyy on 9/21/18.
//  Copyright © 2018 Yuriy Levytskyy. All rights reserved.
//

import UIKit

// MARK: - MainViewController

class MainViewController: UIViewController {
    static let storyBoardID = "MainViewController"
    
    private let viewModel = MainViewModel()
}

// MARK: - UIViewController

extension MainViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bindViewModel()
    }
}

// MARK: - Implementation

extension MainViewController {
    private func bindViewModel() {
        // TODO: Bind input
        
        let input = MainViewModel.Input()
        
        let output = viewModel.transform(input: input)
        
        // TODO: Bind output
    }
}
