//
//  ColorsTableViewController.swift
//  Rainbow2
//
//  Created by Lambda_School_Loaner_246 on 1/29/20.
//  Copyright © 2020 Helico. All rights reserved.
//

import UIKit

class ColorsTableViewController: UITableViewController {
    
    var colors: [MyColor] = [
        // Roy g Biv - Colors of the Rainbow
        MyColor(name: "Red", color: .red),
        MyColor(name: "Orange", color: .orange),
        MyColor(name: "Yellow", color: .yellow),
        MyColor(name: "Green", color: .green),
        MyColor(name: "Blue", color: .blue),
        MyColor(name: "Indigo", color: .cyan),
        MyColor(name: "Violet", color: .purple)
    ]

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // return the number of rows in the table view w/out hard coding, reference color array + .count
        return colors.count
    }

    // Index Path:(x = section, y = row)
    // first row of table view - (0, 0)
    // (0, 1)
    // (0, 2)
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell", for: indexPath)
        
        let color = colors[indexPath.row] // walks through index path rows
        cell.textLabel?.text = color.name // sets the table label with the name of the color
        cell.backgroundColor = color.color // sets the background 
        return cell
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // 1. make sure you are using the correct segue via identifier
        if segue.identifier == "ToDetailViewController" {
            // 2. Get the instance of your detail view from the segue destination.
            // 3. Get the index path for the row the user is tapping
            if let detailVC = segue.destination as? ColorDetailViewController,
                let indexPath = tableView.indexPathForSelectedRow {
                // 4. Initialize color with index path
                let color = colors[indexPath.row]
                
                //5. Pass the color to the detail view
                detailVC.cellColor = color
            }
        }
    }


}
