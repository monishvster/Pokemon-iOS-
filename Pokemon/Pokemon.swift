//
//  Pokemon.swift
//  Pokemon
//
//  Created by Verma,Monish on 2/25/17.
//  Copyright © 2017 Verma,Monish. All rights reserved.
//
import UIKit
import Foundation

class Pokemon {
    
    var PokemonType:String
    
    var PokeDictionary:[String:PokemonModel]
    
    init(PokemonType:String,PokeDictionary:[String:PokemonModel]) {
        self.PokemonType = PokemonType
        self.PokeDictionary = PokeDictionary
    }
    
    //Display order
    func displayorder() -> [PokemonModel]
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
    func addpokemon(_ add:PokemonModel)
    {
        PokeDictionary[add.PokemonName] = add
    }

}
