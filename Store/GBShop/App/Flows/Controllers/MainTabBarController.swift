//
//  MainTabBarController.swift
//  GBShop
//
//  Created by Nata Kuznetsova on 10.07.2023.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        tabBar.barTintColor = Colors.whiteColor
        tabBar.tintColor = .black
        let boldConfiguration = UIImage.SymbolConfiguration(weight: .medium)
        let infoImage = UIImage(systemName: "info.circle", withConfiguration: boldConfiguration)

        let userInformationViewController = UserInformationViewController()

        viewControllers = [generateNavigationController(rootViewController: userInformationViewController,
                                                        title: "info",
                                                        image: infoImage!)]
    }

    private func generateNavigationController(rootViewController: UIViewController,
                                              title: String,
                                              image: UIImage) -> UIViewController {
        let navigationVC = UINavigationController(rootViewController: rootViewController)
        navigationVC.tabBarItem.title = title
        navigationVC.tabBarItem.image = image

        return navigationVC
    }
}
