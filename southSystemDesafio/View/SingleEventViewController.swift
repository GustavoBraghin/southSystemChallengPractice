//
//  SingleEventViewController.swift
//  southSystemDesafio
//
//  Created by Gustavo da Silva Braghin on 07/07/22.
//

import UIKit

class SingleEventViewController: UIViewController {
    let event: EventModel
    
    init(event: EventModel) {
        self.event = event
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        setupView()
    }
    
    func setupView() {
        let label = UILabel(frame: CGRect(x: 50, y: 50, width: 100, height: 100))
        label.text = "\(event.title)"
        self.view.addSubview(label)
        view.backgroundColor = .red
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
