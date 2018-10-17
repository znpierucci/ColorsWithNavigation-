//
//  ViewController.swift
//  ColorsWithNavigation
//
//  Created by Zachary Pierucci on 10/16/18.
//  Copyright © 2018 Zachary Pierucci. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var colorTableView: UITableView!
    
    //var colors: [String] = ["red", "orange", "yellow", "green", "blue", "purple", "brown"]
    var colors = [Colors(color: "red", uicolor: UIColor.red), Colors(color: "orange", uicolor: UIColor.orange), Colors(color: "yellow", uicolor: UIColor.yellow), Colors(color: "green", uicolor: UIColor.green), Colors(color: "blue", uicolor: UIColor.blue), Colors(color: "purple", uicolor: UIColor.purple), Colors(color: "brown", uicolor: UIColor.brown)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Colors"
        
        colorTableView.delegate = self
        colorTableView.dataSource = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let color = colors[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = color.color
        cell.backgroundColor = color.uicolor
        cell.selectionStyle = .none
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.cellForRow(at: indexPath)?.isSelected = false
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ColorDetailViewController,
           let row = colorTableView.indexPathForSelectedRow?.row {
            destination.color = colors[row]
        }
    }

}

