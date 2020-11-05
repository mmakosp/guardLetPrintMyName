//
//  ViewController.swift
//  guardLetPrintMyName
//
//  Created by Mmako Sekhosana on 2020/11/05.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var DisplayNameButton: UIButton!
    @IBOutlet weak var NameLabel: UILabel!
    var namelabelText = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        configureContent()
        applyStyling()
    }

    private func applyStyling() {
        NameLabel.textColor = .gray
        DisplayNameButton.tintColor = .gray
        nameText.clearButtonMode = .whileEditing
    }

    private func configureContent() {
        DisplayNameButton.setTitle("Display my name", for: .normal)
        NameLabel.text = ""
    }

    private func displayMyName() -> String {
        guard let name = nameText.text else { return "" }
        return name
    }

    @IBAction func displayName(_ sender: Any) {
        NameLabel.text = displayMyName()
    }
}

