//
//  HomeViewController.swift
//  Howl
//
//  Created by Adhyyan Narang on 4/18/17.
//  Copyright © 2017 Adhyyan Narang. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var PostTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        PostTableView.delegate = self;
        PostTableView.dataSource = self;
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
        return
    }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "categoryCell", for: indexPath) as! PostTableViewCell
            cell.categoryNameLabel.text = threadNames[indexPath.item]
            return cell
        }
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            selectedRow = indexPath.item;
            selectedLabel.text = "Posting to " + threadNames[selectedRow];
            
        }
        
        func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
            return threadNames[section]
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
