//
//  ViewController.swift
//  Login
//
//  Created by Язгуль Хасаншина on 02.07.2023.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    var correctPassword = "1111"
    @IBOutlet weak var Number: UITextField!
    @IBOutlet weak var Password: UITextField!
    @IBOutlet weak var LoginButtonObj: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        Password.delegate = self
        Number.delegate = self
        LoginButtonObj.isHidden = true
    }
    func textFieldDidBeginEditing(_ textField: UITextField) {
        LoginButtonObj.isHidden = false
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        LoginButtonObj.isHidden = true
    }
    @IBAction func LoginButton(_ sender: Any) {
        var numText: String? = Number.text

        if let text = numText, let range = text.range(of: "8908")  {
            if ((range.lowerBound == numText?.startIndex) && (Password.text == correctPassword)) {
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let vc = storyboard.instantiateViewController(withIdentifier: "TableViewController")
                self.navigationController?.pushViewController(vc, animated: true)
            }
        }
        if (numText == nil) || (numText?.hasPrefix("8908") == false) || (Password.text != correctPassword) {
            let modalVC = UIViewController()
            let label = UILabel(frame: CGRect(x: 0, y: 0, width: 400, height: 280))
            label.text = "Incorrect password or phone number"
            label.textAlignment = .center
            label.textColor = .red
            label.font = UIFont(name: "Optima-Bold", size: 20)
            label.numberOfLines = 2
            label.backgroundColor = .gray
            label.center = modalVC.view.center
            label.frame.origin.y = modalVC.view.bounds.height - 400
            modalVC.view.addSubview(label)
            let imageModalView = UIImageView(image: UIImage(named: "funny cat"))
            imageModalView.frame = CGRect(x: 5, y: 20, width: 400, height: 400)
            modalVC.view.addSubview(imageModalView)
            present(modalVC, animated: true)

        }
    }
    
}

