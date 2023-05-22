//
//  ResultView.swift
//  HarryPotterFans
//
//  Created by Nikita Kuznetsov on 5/9/23.
//

import UIKit
import RealmSwift

class ResultView: UITableViewController {

    var modelResults: Results<ModelResults>!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        modelResults = realm.objects(ModelResults.self)
        
    }
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return modelResults.isEmpty ? 0 : modelResults.count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = modelResults[indexPath.row].name
        cell.detailTextLabel?.text = modelResults[indexPath.row].result
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let result = modelResults[indexPath.row]
     
        let delete = UIContextualAction(style: .destructive, title: "Delete") { _, _, _ in
            StorageManager.deleteObject(result)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
        return UISwipeActionsConfiguration(actions: [delete])
    }
}
