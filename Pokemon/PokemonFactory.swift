//
//  PokemonFactory.swift
//  Pokemon
//
//  Created by Verma,Monish on 2/26/17.
//  Copyright © 2017 Verma,Monish. All rights reserved.
//

import Foundation

class PokemonFactory {
    
    var pokemon:[PokemonData] = []
    
    
    
    func createModel() {
        let pokemonType1 = PokemonData(PokemonType: "Electric", PokeDictionary: ["Pikachu":Pokemon(PokemonName :"Pikachu",PokemonCatchRate:24.8,PokemonImage: #imageLiteral(resourceName: "pikachu")),"Magnemite":Pokemon(PokemonName :"Magnemite",PokemonCatchRate:24.8,PokemonImage: #imageLiteral(resourceName: "magnemite")),"Electrode":Pokemon(PokemonName :"Electrode",PokemonCatchRate:7.8,PokemonImage: #imageLiteral(resourceName: "electrode"))])
        
        let pokemonType2 = PokemonData(PokemonType: "Grass", PokeDictionary: ["Gloom":Pokemon(PokemonName :"Gloom",PokemonCatchRate:15.7,PokemonImage: #imageLiteral(resourceName: "gloom")),"BellSprout":Pokemon(PokemonName :"BellSprout",PokemonCatchRate:33.3,PokemonImage: #imageLiteral(resourceName: "bellsprout")),"Tropius":Pokemon(PokemonName :"Tropius",PokemonCatchRate:26.1,PokemonImage: #imageLiteral(resourceName: "tropius"))])
        
        
        let pokemonType3 = PokemonData(PokemonType: "Flying", PokeDictionary: ["Charizard":Pokemon(PokemonName :"Charizard",PokemonCatchRate:5.9,PokemonImage: #imageLiteral(resourceName: "charizard")),"Spearow":Pokemon(PokemonName :"Spearow",PokemonCatchRate:33.3,PokemonImage: #imageLiteral(resourceName: "spearow")),"Doduo":Pokemon(PokemonName :"Doduo",PokemonCatchRate:24.8,PokemonImage: #imageLiteral(resourceName: "doduo"))])
     
       
        //Appending to array
        pokemon.append(pokemonType1)
        pokemon.append(pokemonType2)
        pokemon.append(pokemonType3)
       
        
    }
    
}
