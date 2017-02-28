//
//  Pokemon.swift
//  Pokemon
//
//  Created by Verma,Monish on 2/25/17.
//  Copyright © 2017 Verma,Monish. All rights reserved.
//
import UIKit
import Foundation

class PokemonData {
    
    var PokemonType:String
    
    var PokeDictionary:[String:Pokemon]
    
    init(PokemonType:String,PokeDictionary:[String:Pokemon]) {
        self.PokemonType = PokemonType
        self.PokeDictionary = PokeDictionary
    }
    
    //Display order
    func displayorder() -> [Pokemon]
    {
        let pokemonCatch = self.PokeDictionary.values
        return pokemonCatch.sorted(by: {$0.PokemonCatchRate>$1.PokemonCatchRate})
    }
    
    //Update Catch Rate
    func updatecatchrate(_ pName:String)
    {
        for i in PokeDictionary
        {
            if i.key == pName
            {
                PokeDictionary[i.key]?.PokemonCatchRate += 1
            }
        }
    }
    
    //Adds a Pokemon
    func addpokemon(_ add:Pokemon)
    {
        //do something in future
        
    }

}
