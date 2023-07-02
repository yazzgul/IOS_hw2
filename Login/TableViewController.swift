//
//  TableViewController.swift
//  Login
//
//  Created by Язгуль Хасаншина on 02.07.2023.
//

import Foundation
import UIKit
final class TableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    private let data: [ListTableViewData] = [
        ListTableViewData(name: "Daenerys Targaryen", image: UIImage(named: "sad cat 2")!),
        ListTableViewData(name: "John Snow", image: UIImage(named: "cry cat")!),
        ListTableViewData(name: "Cersei Lannister", image: UIImage(named: "angry2 cat")!),
        ListTableViewData(name: "Jaime Lannister", image: UIImage(named: "white cat")!),
        ListTableViewData(name: "Robb Stark", image: UIImage(named: "cute cat")!),
        ListTableViewData(name: "Petyr Baelish", image: UIImage(named: "cool cat")!),
        ListTableViewData(name: "Ramsay Bolton", image: UIImage(named: "zloy")!),
        ListTableViewData(name: "Sansa Stark", image: UIImage(named: "orange cat")!)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let title = data[indexPath.row].name
        let image: UIImage = data[indexPath.row].image

        guard let vc = storyboard?.instantiateViewController(withIdentifier: "ContactViewController") as? ContactViewController else {
            return }
        navigationController?.pushViewController(vc, animated: true)
        vc.loadViewIfNeeded()
        vc.setUp(title: title, image: image)
//        vc.setUp(title: title)
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        100
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ListTableViewCell") as? ListTableViewCell
        else { return UITableViewCell() }
        
        cell.setUp(data[indexPath.row])
        return cell
    }
}


