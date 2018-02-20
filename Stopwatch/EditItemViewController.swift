//
//  AddItemController.swift
//  Mini-Project
//
//  Created by Robert Fox on 2/11/18.
//  Copyright © 2018 Your School. All rights reserved.
//

import UIKit


class EditItemViewController: UIViewController {

    var nameReceived = ""
    var latReceived = 9999.9
    var lonReceived = 9999.9
    var descReceived = ""
    var dateReceived = Date()
    
    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var lat: UITextField!
    
    @IBOutlet weak var lon: UITextField!
    
    
    @IBOutlet weak var desc: UITextField!
    
    
    @IBOutlet weak var date: UIDatePicker!
    
    
    override func viewDidLoad() {
        self.navigationItem.title = "Edit Item"
        print(self.nameReceived)
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    // This function gets data ready to be sent over to another scene.  Notice how we get the navigation controller first, then get the view controller embedded inside it.
    // Setup the time to be sent over to the next view controller here.
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        // NOTE: You'll need to click on the seque you create and give it the name "AddTime" for this to work!
        if (segue.identifier == "saveItem") {
            let destinationVC = segue.destination as! UINavigationController
            let targetController = destinationVC.topViewController as! HomeTableViewController
            targetController.name = name.text!
            targetController.lat = Double(lat.text!)!
            targetController.lon = Double(lon.text!)!
            targetController.desc = desc.text!
            targetController.date = date.date
            // ADD CODE: Get the data ready to send over to the next controller by setting the fields over in the AddTimeViewController
            
        }
        
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    
     }
    */

}
