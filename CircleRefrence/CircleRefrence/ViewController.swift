//
//  ViewController.swift
//  CircleRefrence
//
//  Created by gshopper on 2019/3/27.
//  Copyright © 2019 mzh. All rights reserved.
//

import UIKit
class Person {
    var name = ""
    var pet: Dog? = nil
}

class Dog {
    var name = ""
    var master:Person? = nil
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
}

extension ViewController {
    func setupUI() -> Void {
        
    }
}

// mark: - event
extension ViewController {
    @IBAction func generateCircleRefrence(_ sender: Any) {
        present(HomeViewController (), animated: true, completion: nil)
    }
}
