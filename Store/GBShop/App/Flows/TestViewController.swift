//
//  Е.swift
//  GBShop
//
//  Created by Nata Kuznetsova on 13.07.2023.
//

import Foundation
import UIKit

class TestViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
       
        let textfield = UITextField()
        textfield.backgroundColor = Colors.whiteColor

        view.addSubview(textfield)

        textfield.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            textfield.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textfield.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            textfield.heightAnchor.constraint(equalToConstant: 30),
            textfield.widthAnchor.constraint(equalToConstant: 300)
        ])
        
        //        var textfield = UITextField()
        //
        // 
        // Do any additional setup after loading the view.
    }
