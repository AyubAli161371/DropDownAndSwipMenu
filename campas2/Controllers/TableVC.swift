//
//  TableVC.swift
//  campas2
//
//  Created by Ayub Ali on 25/02/2022.
//

import UIKit

class TableVC: UIViewController {

    @IBOutlet weak var myTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

}


extension TableVC: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTable.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath)
        return cell
    }
    
    
}
