//
//  Navigator.swift
//  Application
//
//  Created by Yuriy Levytskyy on 9/22/18.
//  Copyright © 2018 Yuriy Levytskyy. All rights reserved.
//

import UIKit

// MARK: - MainNavigatorType

protocol MainNavigatorType {
    var navigationController: UINavigationController { get }
    
    func toMain()
}

// MARK: - MainNavigator

class MainNavigator {
    let navigationController: UINavigationController

    private let storyBoard: UIStoryboard

    init() {
        navigationController = UINavigationController()
        storyBoard = UIStoryboard(name: "Main", bundle: nil)
    }
}

// MARK: - MainNavigatorType

extension MainNavigator: MainNavigatorType {
    func toMain() {
        let vc = self.storyBoard.instantiateViewController(withIdentifier: MainViewController.storyBoardID)
        self.navigationController.pushViewController(vc, animated: true)
    }
}
