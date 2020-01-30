//
//  ColorDetailViewController.swift
//  Rainbow2
//
//  Created by Lambda_School_Loaner_246 on 1/29/20.
//  Copyright © 2020 Helico. All rights reserved.
//

import UIKit

class ColorDetailViewController: UIViewController {
    
    var cellColor: MyColor? // not going to be a color until it is tapped, initially nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateViews() // set title and color of background to the color
    }
    
    func updateViews() {
        if let cellColor = cellColor {
            title = cellColor.name
            view.backgroundColor = cellColor.color
        }
    }

}
