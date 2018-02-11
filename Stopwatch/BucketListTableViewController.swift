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
        let cellIdentifier = "BucketListTableViewCell"
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! BucketListTableViewCell
        
        // Fetches the appropriate note for the data source layout.
        let item = BucketList[indexPath.row]
        
        cell.nameLabel.text = item.name
        
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
    
    // This function gets data ready to be sent over to another scene.  Notice how we get the navigation controller first, then get the view controller embedded inside it.
    // Setup the time to be sent over to the next view controller here.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        // NOTE: You'll need to click on the seque you create and give it the name "AddTime" for this to work!
        if (segue.identifier == "AddTime") {
            let destinationVC = segue.destination as! UINavigationController
            // let targetController = destinationVC.topViewController as! AddTimeViewController
            
            // ADD CODE: Get the data ready to send over to the next controller by setting the fields over in the AddTimeViewController
            

            
        }

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

