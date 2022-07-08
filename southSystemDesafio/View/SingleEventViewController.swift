//
//  SingleEventViewController.swift
//  southSystemDesafio
//
//  Created by Gustavo da Silva Braghin on 07/07/22.
//

import UIKit

class SingleEventViewController: UIViewController {
    let event: EventModel
    let label = UILabel()
    let eventTitle = UILabel()
    let eventPrice = UILabel()
    let eventDate = UILabel()
    let eventDescription = UITextView()
    let but = UIButton()
    
    init(event: EventModel) {
        self.event = event
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        // Do any additional setup after loading the view.
        configureView()
    }
    
    func setupButton() {
        but.setTitle("Return", for: .normal)
        but.setTitleColor(.blue, for: .normal)
        but.addTarget(self, action: #selector(buttonAction), for:.allTouchEvents)
        but.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(but)
        
        NSLayoutConstraint.activate([
            but.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 8),
            but.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 2),
        ])
    }
    
    func setupLabel() {
        label.text = "Informações do evento:"
        label.textColor = .black
        //        label.backgroundColor = .blue
        label.textAlignment = .left
        label.layer.cornerRadius = 20
        label.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(label)
        
        
        NSLayoutConstraint.activate([
            label.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            label.topAnchor.constraint(equalTo: but.safeAreaLayoutGuide.bottomAnchor, constant: 20)
        ])
    }
    
    func setupTextInfo() {
        eventTitle.text = "\(event.title)"
        eventTitle.textColor = .black
        //        eventTitle.backgroundColor = .red
        eventTitle.textAlignment = .center
        eventTitle.layer.cornerRadius = 20
        eventTitle.font = UIFont(name: label.font.fontName, size: 22)
        eventTitle.translatesAutoresizingMaskIntoConstraints = false
        eventTitle.numberOfLines = 2
        
        view.addSubview(eventTitle)
        
        NSLayoutConstraint.activate([
            eventTitle.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            eventTitle.topAnchor.constraint(equalTo: label.safeAreaLayoutGuide.bottomAnchor, constant: 10),
            eventTitle.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -70),
            eventTitle.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 70)
        ])
    }
    
    func setupEventPrice() {
        eventPrice.text = "Preço: R$: \(event.price)"
        eventPrice.textColor = .black
        //        eventPrice.backgroundColor = .blue
        eventPrice.textAlignment = .center
        eventPrice.font = UIFont(name: label.font.fontName, size: 22)
        eventPrice.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(eventPrice)
        
        NSLayoutConstraint.activate([
            eventPrice.topAnchor.constraint(equalTo: eventTitle.safeAreaLayoutGuide.bottomAnchor, constant: 10),
            eventPrice.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            eventPrice.trailingAnchor.constraint(equalTo: eventTitle.safeAreaLayoutGuide.centerXAnchor, constant: -5)
        ])
    }
    
    func setupEventDate() {
        let date = Date(timeIntervalSince1970: event.date)
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = DateFormatter.Style.short //Set date style
        let localDate = dateFormatter.string(from: date as Date)
        print(localDate)
        eventDate.text = "Data: \(localDate)"
        eventDate.textColor = .black
        //        eventDate.backgroundColor = .blue
        eventDate.textAlignment = .center
        eventDate.font = UIFont(name: label.font.fontName, size: 22)
        eventDate.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(eventDate)
        
        NSLayoutConstraint.activate([
            eventDate.topAnchor.constraint(equalTo: eventTitle.safeAreaLayoutGuide.bottomAnchor, constant: 10),
            eventDate.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            eventDate.leadingAnchor.constraint(equalTo: eventTitle.safeAreaLayoutGuide.centerXAnchor, constant: 5)
        ])
    }
    
    
    func setupEventDescription() {
        eventDescription.text = "\(event.description)"
        //        eventDescription.backgroundColor = .red
        eventDescription.textAlignment = .center
        eventDescription.font = UIFont(name: label.font.fontName, size: 18)
        eventDescription.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(eventDescription)
        
        NSLayoutConstraint.activate([
            eventDescription.topAnchor.constraint(equalTo: eventPrice.safeAreaLayoutGuide.bottomAnchor, constant: 10),
            eventDescription.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            eventDescription.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: 0),
            eventDescription.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 0)
        ])
    }
    
    func configureView() {
        setupButton()
        setupLabel()
        setupTextInfo()
        setupEventPrice()
        setupEventDate()
        setupEventDescription()
    }
    
    @objc func buttonAction(sender: UIButton!) {
        print("Button Clicked")
        self.dismiss(animated: true)
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
