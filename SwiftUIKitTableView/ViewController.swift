//
//  ViewController.swift
//  SwiftUIKitTableView
//
//  Created by 宮本光直 on 2021/07/02.
//

import Foundation
import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        self.tableView.register(HostingTableViewCell<SwiftUIViewTableCell>.self,
                                forCellReuseIdentifier: "SwiftUIViewTableCell")
        self.tableView.register(HostingTableViewCell<Card1>.self,
                                forCellReuseIdentifier: "Card1")
        self.tableView.register(HostingTableViewCell<Card2>.self,
                                forCellReuseIdentifier: "Card2")
        self.tableView.separatorStyle = .none
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        print("::::: button tap :::::")
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row % 7 == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Card1", for: indexPath) as! HostingTableViewCell<Card1>
            cell.set(rootView: Card1(), parentController: self)
            return cell
        } else if indexPath.row % 3 == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Card2", for: indexPath) as! HostingTableViewCell<Card2>
            cell.set(rootView: Card2(), parentController: self)
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SwiftUIViewTableCell", for: indexPath) as! HostingTableViewCell<SwiftUIViewTableCell>
            cell.set(rootView: SwiftUIViewTableCell(text: "こんにちわ"), parentController: self)
            return cell
        }
    }
    
}
