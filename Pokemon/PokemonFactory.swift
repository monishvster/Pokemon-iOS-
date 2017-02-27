//
//  PokemonFactory.swift
//  Pokemon
//
//  Created by Verma,Monish on 2/26/17.
//  Copyright © 2017 Verma,Monish. All rights reserved.
//

import Foundation

class PokemonFactory {
    
    var pokemon:[Pokemon] = []
    
    
    
    func createModel() {
        let pokemonType1 = Pokemon(PokemonType: "Electric", PokeDictionary: ["Pikachu":PokemonModel(PokemonName :"Pikachu",PokemonCatchRate:24.8,PokemonImage: #imageLiteral(resourceName: "pikachu")),"Magnemite":PokemonModel(PokemonName :"Magnemite",PokemonCatchRate:24.8,PokemonImage: #imageLiteral(resourceName: "magnemite")),"Electrode":PokemonModel(PokemonName :"Electrode",PokemonCatchRate:7.8,PokemonImage: #imageLiteral(resourceName: "electrode"))])
        
        let pokemonType2 = Pokemon(PokemonType: "Grass", PokeDictionary: ["Gloom":PokemonModel(PokemonName :"Gloom",PokemonCatchRate:15.7,PokemonImage: #imageLiteral(resourceName: "gloom")),"BellSprout":PokemonModel(PokemonName :"BellSprout",PokemonCatchRate:33.3,PokemonImage: #imageLiteral(resourceName: "bellsprout")),"Tropius":PokemonModel(PokemonName :"Tropius",PokemonCatchRate:26.1,PokemonImage: #imageLiteral(resourceName: "tropius"))])
        
        
        let pokemonType3 = Pokemon(PokemonType: "Flying", PokeDictionary: ["Charizard":PokemonModel(PokemonName :"Charizard",PokemonCatchRate:5.9,PokemonImage: #imageLiteral(resourceName: "charizard")),"Spearow":PokemonModel(PokemonName :"Spearow",PokemonCatchRate:33.3,PokemonImage: #imageLiteral(resourceName: "spearow")),"Doduo":PokemonModel(PokemonName :"Doduo",PokemonCatchRate:24.8,PokemonImage: #imageLiteral(resourceName: "doduo"))])
     
       
        //Appending to array
        pokemon.append(pokemonType1)
        pokemon.append(pokemonType2)
        pokemon.append(pokemonType3)
       
        
    }
    
}
