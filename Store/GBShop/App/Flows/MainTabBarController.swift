//
//  MainTabBarController.swift
//  GBShop
//
//  Created by Nata Kuznetsova on 13.07.2023.
//

import Foundation
import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        tabBar.barTintColor = .blue

        let test = TestViewController()
        let test2 = Test2ViewController()
        let userInformationViewController = UserInformationViewController()

        viewControllers = [userInformationViewController, test, test2]
    }
}
