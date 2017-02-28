//
//  PokemonTableViewController.swift
//  Pokemon
//
//  Created by Verma,Monish on 2/14/17.
//  Copyright © 2017 Verma,Monish. All rights reserved.
//

import UIKit

class PokemonTableViewController: UITableViewController {

    var pokeFactory:PokemonFactory = PokemonFactory()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pokeFactory.createModel()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return pokeFactory.pokemon.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return pokeFactory.pokemon[section].PokeDictionary.keys.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
      
            let cell = tableView.dequeueReusableCell(withIdentifier: "electricCell", for: indexPath)
            let output = pokeFactory.pokemon[indexPath.section].displayorder()
            cell.textLabel?.text = output[indexPath.row].PokemonName
            cell.imageView?.image = output[indexPath.row].PokemonImage
            cell.detailTextLabel?.text = String(output[indexPath.row].PokemonCatchRate)
            return cell
        
       
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return pokeFactory.pokemon[section].PokemonType
    }


    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let output:[Pokemon] = pokeFactory.pokemon[indexPath.section].displayorder()
        for i in 0..<pokeFactory.pokemon.count {
        pokeFactory.pokemon[i].updatecatchrate(output[indexPath.row].PokemonName)
        }
        self.tableView.reloadData()
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
