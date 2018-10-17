//
//  ColorDetailViewController.swift
//  ColorsWithNavigation
//
//  Created by Zachary Pierucci on 10/17/18.
//  Copyright © 2018 Zachary Pierucci. All rights reserved.
//

import UIKit

class ColorDetailViewController: UIViewController {

    @IBOutlet weak var colorLabel: UILabel!
    
    var color: Colors?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        colorLabel.text = color?.color
        self.view.backgroundColor = color?.uicolor
        self.title = color?.color
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
