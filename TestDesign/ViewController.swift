//
//  ViewController.swift
//  TestDesign
//
//  Created by Mohamed on 11/29/19.
//  Copyright © 2019 Mohamed74. All rights reserved.
//

import UIKit
import SkyFloatingLabelTextField

class ViewController: UIViewController {

    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var circleProfile: UIImageView!
    @IBOutlet weak var imagePicker: UIButton!
    @IBOutlet weak var updateButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupStackView()

    }
    
    //MARK:- Setup custom view
    
    override func viewDidLayoutSubviews() {
        
        containerView.layer.cornerRadius = containerView.frame.height / 2
        circleProfile.layer.cornerRadius = circleProfile.frame.height / 2
        circleProfile.clipsToBounds = true
        imagePicker.layer.cornerRadius = imagePicker.frame.height / 2
        updateButton.layer.cornerRadius = updateButton.frame.height / 2
    }
    
    
    //MARK:- setup Custom TextFileds
    
    func setupStackView(){
        
        
        let textField = SkyFloatingLabelTextField(frame: CGRect(x: 0, y: 0, width: 250, height: 30))
        textField.placeholder = "الاسم"
        textField.title = "الاسم كامل"
        textField.isLTRLanguage = false
        
        let stackView = UIStackView(arrangedSubviews: [textField])
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(stackView)
        
        stackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        
        
    }
    
    

}

