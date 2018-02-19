/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/


import UIKit

class BucketListViewController: UITableViewController {
    
    var BucketList = [BucketItem]()
    
    
    
    func loadSampleItems() {
        let item1 = BucketItem(name: "Register for Graduation", latitude: 0.0, longitude: 0.0, description: "Complete graduation forms", dueDate: Date())
        BucketList += [item1]
        let item2 = BucketItem(name: "Finish CS4720", latitude: 0.0, longitude: 0.0, description: "Get an A in this class", dueDate: Date())
        BucketList += [item2]
        let item3 = BucketItem(name: "Sample item", latitude: 0.0, longitude: 0.0, description: "Sample bucket list item", dueDate: Date())
        BucketList += [item3]
    }
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Table view cells are reused and should be dequeued using a cell identifier.
        let cellIdentifier = "BucketTableViewCell"
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! BucketListTableViewCell
        
        // Fetches the appropriate note for the data source layout.
        let item = BucketList[indexPath.row]
        
//        cell.nameLabel.text = item.name
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
        let convertedDate = dateFormatter.string(from: item.dueDate)
        cell.dateLabel.text = convertedDate
        
        return cell
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    // Override to show how many notes are in the list
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return BucketList.count
    }
    

    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadSampleItems()
        self.navigationItem.title = "UVA Bucket List"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    
}

