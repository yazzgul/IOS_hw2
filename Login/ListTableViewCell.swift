//
//  ListTableViewCell.swift
//  Login
//
//  Created by Язгуль Хасаншина on 02.07.2023.
//

import Foundation
import UIKit
struct ListTableViewData {
    let name: String
    let image: UIImage
}
final class ListTableViewCell: UITableViewCell {
    @IBOutlet weak var PersonImage: UIImageView!
    @IBOutlet weak var NameLabel: UILabel!
   
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        NameLabel.backgroundColor = .systemGray3
        NameLabel.layer.cornerRadius = 16
        
    }
    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
        super.init(coder: coder)

    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        NameLabel.text = nil
        PersonImage.image = nil
        
    }
    func setUp(_ data: ListTableViewData) {
        NameLabel.text = data.name
        PersonImage.image = data.image
    }
    
    

}

