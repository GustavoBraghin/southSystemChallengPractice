//
//  ViewController.swift
//  southSystemDesafio
//
//  Created by Gustavo da Silva Braghin on 05/07/22.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        apiRequest().fetchData { events, error in
            print(events![0].title)
            print(events![1].title)
            print(events![2].title)
            print(events![3].title)
            print(events![4].title)
        }
    }
}

