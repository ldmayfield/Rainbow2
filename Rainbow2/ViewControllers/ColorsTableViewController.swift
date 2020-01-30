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
        cell.textLabel?.text = color.name
        cell.backgroundColor = color.color
        return cell
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }


}
