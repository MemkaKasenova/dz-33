//
//  TableViewController.swift
//  dz 33
//
//  Created by merim kasenova on 15/3/23.
//

import UIKit

class TableViewController: UIViewController {
    
    @IBOutlet weak var listViewController: UITableView!
    
    private var files: [File] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "My Сontacts"
        listViewController.dataSource = self
        
        
        initData()
    }
    private func initData() {
        files = [File(name:"Jane Koper", telNumber: "0996345276", avaImage:"image1"),
                 File(name:"Ostin Go", telNumber: "0996345276", avaImage:"image2"),
                 File(name:"Nina Davidova", telNumber: "0996345276", avaImage:"image3"),
                 File(name:"Danila Kozlov", telNumber: "0996345276", avaImage:"image1"),
                 File(name:"Jenifer Lopez", telNumber: "0996345276", avaImage:"image2"),
                 File(name:"Louis Vitton", telNumber: "0996345276", avaImage:"image3"),
                 File(name:"Zara", telNumber: "0996345276", avaImage:"image1"),
                 File(name:"Hermes", telNumber: "0996345276", avaImage:"image2"),
                 File(name:"Mersedes", telNumber: "0996345276", avaImage:"image3"),
                 File(name:"Lexus", telNumber: "0996345276", avaImage:"image1"),
                 File(name:"Audi", telNumber: "0996345276", avaImage:"image2")
        ]
    }
}

extension TableViewController:UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        files.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle , reuseIdentifier: "cell")
        cell.textLabel?.text = files[indexPath.row].name
        cell.detailTextLabel?.text = files[indexPath.row].telNumber
        cell.imageView?.image = UIImage(named: files[indexPath.row].avaImage)
        return cell
    }
    
}
    
struct File {
    var name: String
    var telNumber:String
    var avaImage:String
}
    
    
    
    
    
    
