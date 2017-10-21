//
//  ColorsViewController.swift
//  Colors
//
//  Created by 来思良 on 2017/10/20.
//  Copyright © 2017年 Yuzhou He. All rights reserved.
//

import UIKit

class ColorsViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var colorsTableView: UITableView!
    struct Color {
        let name: String
        let uiColor: UIColor
    }
    
    var colors = ["red","orange","yellow","green","blue","purple","brown"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorsTableView.dataSource = self
        colorsTableView.delegate = self
        // Do any additional setup after loading the view.
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        
        cell.textLabel?.text=colors[indexPath.row]
        
        return cell
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
