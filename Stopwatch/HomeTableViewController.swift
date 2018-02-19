//
//  HomeTableViewController.swift
//  Mini-Project
//
//  Created by Justin Barry on 2/11/18.
//  Copyright © 2018 Your School. All rights reserved.
//

import UIKit

class HomeTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var name  = ""
    var lat = 9999.9
    var lon  = 9999.9
    var desc = ""
    var date  = Date()
    
    @IBOutlet weak var bucketTableView: UITableView!
    var buckets = [BucketItem]()
    
    func loadSampleBucketList(){
        let bucket1 = BucketItem(name: "Register for Graduation", latitude: 1.0,  longitude: 1.0, description: "Description 1", dueDate : Date(timeIntervalSinceReferenceDate: -123456789.0))
        buckets += [bucket1]
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadSampleBucketList()
        if(name != "" && lat != 9999.9 && lon != 9999.9 && desc != "" ) {
            let bucket1 = BucketItem(name: name, latitude: lat,  longitude: lon, description: desc, dueDate : date)
            buckets += [bucket1]
            
        }
        bucketTableView.dataSource = self
        bucketTableView.delegate = self
        
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source


    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int
    {
        return buckets.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: IndexPath) -> UITableViewCell
    {
        
        let cellIdentifier = "BucketTableViewCell"
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! BucketListTableViewCell
        
        // Fetches the appropriate note for the data source layout.
        let bucket = buckets[indexPath.row]
        
        cell.nameLabel.text = bucket.name
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
        let convertedDate = dateFormatter.string(from: bucket.dueDate)
        cell.dateLabel.text = convertedDate
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        
    }
    
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "BucketTableViewCell"
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! BucketListTableViewCell
        
        // Fetches the appropriate note for the data source layout.
        let bucket = buckets[indexPath.row]
        
        cell.nameLabel.text = bucket.name
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
        let convertedDate = dateFormatter.string(from: bucket.dueDate)
        cell.dateLabel.text = convertedDate
        
        return cell
    }
    
    

    
    
  

}
