//
//  HomeViewController.swift
//  CircleRefrence
//
//  Created by gshopper on 2019/3/27.
//  Copyright © 2019 mzh. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        self.view.backgroundColor = .white
        super.viewDidLoad()
        let person = Person ()
        let dog = Dog ()
        person.name = "小明"
        dog.name = "小黄"
        person.pet = dog
        dog.master = person
    }
    

    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        dismiss(animated: true, completion: nil)
    }

}
