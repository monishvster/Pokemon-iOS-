//
//  PokemonTableViewController.swift
//  Pokemon
//
//  Created by Verma,Monish on 2/14/17.
//  Copyright © 2017 Verma,Monish. All rights reserved.
//

import UIKit

class PokemonTableViewController: UITableViewController {

    var PokemonImages:[UIImage]!
    var PokemonName:[String]!
    var PokemonCatchRate:[Double]!
    var PokemonType:[String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //initializing the variables
        
        PokemonImages = [#imageLiteral(resourceName: "pikachu"),#imageLiteral(resourceName: "electrode"),#imageLiteral(resourceName: "magnemite"),#imageLiteral(resourceName: "gloom"),#imageLiteral(resourceName: "bellsprout"),#imageLiteral(resourceName: "tropius"),#imageLiteral(resourceName: "charizard"),#imageLiteral(resourceName: "spearow"),#imageLiteral(resourceName: "doduo")]
        PokemonName = ["Pikachu","Electrode","Magnemite","Gloom","Bellsprout","Tropius","Charizard","Spearow","Doduo"]
        PokemonCatchRate = [24.8,7.8,24.8,15.7,33.3,26.1,5.9,33.3,24.8]
        PokemonType = ["Electric","Grass","Flying"]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return PokemonType.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return PokemonType.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "electricCell", for: indexPath)
            cell.textLabel?.text = PokemonName[indexPath.row]
            cell.imageView?.image = PokemonImages[indexPath.row]
            cell.detailTextLabel?.text = String(PokemonCatchRate[indexPath.row])
            return cell
            
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "grassCell", for: indexPath)
            cell.textLabel?.text = PokemonName[indexPath.row + 3]
            cell.imageView?.image = PokemonImages[indexPath.row + 3]
            cell.detailTextLabel?.text = String(PokemonCatchRate[indexPath.row + 3])
            return cell
            
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "flyingCell", for: indexPath)
            cell.textLabel?.text = PokemonName[indexPath.row + 6]
            cell.imageView?.image = PokemonImages[indexPath.row + 6]
            cell.detailTextLabel?.text = String(PokemonCatchRate[indexPath.row + 6])
            return cell
            
        default:
            break
        }
    
        return tableView.dequeueReusableCell(withIdentifier: "flyingCell", for: indexPath)
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return PokemonType[section]
        case 1:
            return PokemonType[section]
        case 2:
            return PokemonType[section]
        default:
            return ""
        }
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
