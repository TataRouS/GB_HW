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

        tabBar.barTintColor = Colors.mainBlueColor
        tabBar.backgroundColor = Colors.mainBlueColor
        tabBar.tintColor = .white
        let boldConfiguration = UIImage.SymbolConfiguration(weight: .medium)
        let infoImage = UIImage(systemName: "info.circle", withConfiguration: boldConfiguration)
        let productImage = UIImage(systemName: "cart", withConfiguration: boldConfiguration)

        let userInformationViewController = UserInformationViewController()
        let productListViewController = ProductListViewController()

        viewControllers = [generateNavigationController(rootViewController: userInformationViewController,
                                                        title: "Info",
                                                        image: infoImage!),
                           generateNavigationController(rootViewController: productListViewController,
                                                        title: "Products",
                                                        image: productImage!)]
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
