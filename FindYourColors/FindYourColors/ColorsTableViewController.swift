//
//  ColorsTableViewController.swift
//  FindYourColors
//
//  Created by Ariana Daney on 4/9/20.
//  Copyright © 2020 Ariana Daney. All rights reserved.
//

import UIKit

//let backgroundImage = UIImage(named: "rainbow")
//let imageView = UIImageView(image: backgroundImage)
//self.tableView.backgroundView = imageView


class ColorsTableViewController: UITableViewController, PaletteDelegate {
    func addNewPalette(palette: Palette) {
        palettes.append(palette)
        tableView.reloadData()
    }
    
    let cellReuseIdentifier = "paletteEntryCell"
    let paletteEntrySegueIdentifier = "paletteItem"
    
    var newPaletteName: String = ""
    var colors = [UIColor]()

    var palettes = [Palette(name: "Room", colors: [UIColor(red: 0.1, green: 0.5, blue: 0.75, alpha: 1.0)]), Palette(name: "Kitchen", colors: [UIColor(red: 0.4, green: 0.3, blue: 0.4, alpha: 1.0), UIColor(red: 0.6, green: 0.7, blue: 0.8, alpha: 1.0), UIColor(red: 0.4, green: 0.7, blue: 0.1, alpha: 1.0)])]

    override func viewDidLoad() {
        super.viewDidLoad()
        
       }
    override func viewWillAppear(_ animated: Bool) {
      let backgroundImage = UIImage(named: "rainbow")
      let imageView = UIImageView(image: backgroundImage)
      self.tableView.backgroundView = imageView
      //tableView.tableFooterView = UIView(frame: )
        imageView.contentMode = .scaleAspectFill
      //self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        //tableView.separatorStyle = .none

        //tableView.separatorStyle = UITableViewCell.CellStyle.None




    }

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    

    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return palettes.count
    }
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "paletteEntryCell", for: indexPath)
        cell.textLabel?.text = palettes[indexPath.row].name
        

        // Configure the cell...

        return cell
    }
    
  
    
    
    
    
    
  

//    @IBAction func newpalette(segue: UIStoryboardSegue) {
//        let newPalette = segue.source as! NewPaletteViewController
//        newPalette.entries.append(Palette(name: "Ariana"))
//        tableView.reloadData()
//    }
    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showPalette" {
            let newPaletteViewController = segue.destination as? NewPaletteViewController
            let cell = (sender as? UITableViewCell)!
            let indexPath = tableView.indexPath(for: cell)
            let entry = palettes[indexPath!.row]
            newPaletteViewController?.paletteEntry = entry
            
        }
        else if segue.identifier == "addNewPalette" {
            let destinationVC = segue.destination as? ViewController
            destinationVC?.delegate = self
        }
    }

        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    
    


}
