//
//  ViewController.swift
//  Binger
//
//  Created by Joshua Madrigal on 9/21/18.
//  Copyright © 2018 Joshua Madrigal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var showsLabel: UILabel!
    @IBOutlet weak var randomShowLabel: UILabel!
    @IBOutlet weak var bingerSpokenLabel: UILabel!
    @IBOutlet weak var addShowBtn: UIButton!
    @IBOutlet weak var addShowTextField: UITextField!
    @IBOutlet weak var randomShowStackView: UIStackView!
    @IBOutlet weak var addShowStackView: UIStackView!
    @IBOutlet weak var showsStackView: UIStackView!
    
    var shows: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showsStackView.isHidden = true
        randomShowStackView.isHidden = true
    }

    func updateShowsLabel() {
        showsLabel.text = shows.joined(separator: ", ")
        
    }
    @IBAction func addShowPressed(_ sender: Any) {
        guard let showName = addShowTextField.text else { return }
        if addShowTextField.text != "" {
            shows.append(showName)
            updateShowsLabel()
            addShowTextField.text = ""
            showsStackView.isHidden = false
        }
        else {
            showsStackView.isHidden = false
            showsLabel.text = "Can't have Empty Text Field"
        }
        
        if shows.count > 1 {
            randomShowStackView.isHidden = false
            bingerSpokenLabel.isHidden = true
            randomShowLabel.isHidden = true
            
        }
        
        
    }
    
    @IBAction func randomBingePressed(_ sender: Any) {
        randomShowLabel.text = shows.randomElement()
        randomShowLabel.isHidden = false
        bingerSpokenLabel.isHidden = false
    }
    
    
}

