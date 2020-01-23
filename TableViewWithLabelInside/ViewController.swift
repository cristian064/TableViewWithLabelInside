//
//  ViewController.swift
//  TableViewWithLabelInside
//
//  Created by cristian ayala on 1/22/20.
//  Copyright © 2020 cristian ayala. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel2: UILabel!
    @IBOutlet weak var myTextLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }

    override func viewDidLayoutSubviews() {
    super.viewDidLayoutSubviews()
        myTextLabel.text = "guard let headerView = tableView.tableHeaderView elseguard let headerView = tableView.tableHeaderView elseguard let headerView = tableView.tableHeaderView elseguard let headerView = tableView.tableHeaderView elseguard let headerView = tableView.tableHeaderView elseguard let headerView = tableView.tableHeaderView elseguard let headerView = tableView.tableHeaderView elseguard let headerView = tableView.tableHeaderView elseguard let headerView = tableView.tableHeaderView else"
        
        myLabel2.text = "guard let headerView = tableView.tableHeaderView elseguard let headerView = tableView.tableHeaderView elseguard let headerView = tableView.tableHeaderView elseguard let headerView = tableView.tableHeaderView elseguard let headerView = tableView.tableHeaderView elseguard let headerView = tableView.tableHeaderView elseguard let headerView = tableView.tableHeaderView elseguard let headerView = tableView.tableHeaderView elseguard let headerView = tableView.tableHeaderView else"
        setupSize()
    }

    func setupSize(){
        guard let headerView = tableView.tableHeaderView else {
          return
        }
        let size = headerView.systemLayoutSizeFitting(UIView.layoutFittingCompressedSize)
        if headerView.frame.size.height != size.height {
            headerView.frame.size.height = size.height
            tableView.tableHeaderView = headerView
            tableView.layoutIfNeeded()
        }
        
    }
    
}

extension ViewController : UITableViewDelegate , UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
}
