//
//  ContactViewController.swift
//  Login
//
//  Created by Язгуль Хасаншина on 02.07.2023.
//

import Foundation
import UIKit
class ContactViewController: UIViewController {
    @IBOutlet var personImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    func setUp(title: String, image: UIImage) {
        titleLabel.text = title
        personImage.image = image
        self.view.addSubview(personImage)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    
}
