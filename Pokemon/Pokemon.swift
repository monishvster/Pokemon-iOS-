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
    
  //  PokemonImages = [#imageLiteral(resourceName: "pikachu"),#imageLiteral(resourceName: "electrode"),#imageLiteral(resourceName: "magnemite"),#imageLiteral(resourceName: "gloom"),#imageLiteral(resourceName: "bellsprout"),#imageLiteral(resourceName: "tropius"),#imageLiteral(resourceName: "charizard"),#imageLiteral(resourceName: "spearow"),#imageLiteral(resourceName: "doduo")]
   // PokemonName = ["Pikachu","Electrode","Magnemite","Gloom","Bellsprout","Tropius","Charizard","Spearow","Doduo"]
   // PokemonCatchRate = [24.8,7.8,24.8,15.7,33.3,26.1,5.9,33.3,24.8]
    // PokemonType = ["Electric","Grass","Flying"]
    
    
    
    
    
    func createModel() {
        var pokemon : [PokemonType] = []
      // var MainPokemon = Pokemon()
        
        let pokemon1 = PokemonType(PokemonTypeName: "Electric", PokemonCatchRate: 24.8, PokemonImage: #imageLiteral(resourceName: "pikachu"))
        let pokemon2 = PokemonType(PokemonTypeName: "Electric", PokemonCatchRate: 7.8, PokemonImage: #imageLiteral(resourceName: "electrode"))
        let pokemon3 = PokemonType(PokemonTypeName: "Electric", PokemonCatchRate: 24.8, PokemonImage: #imageLiteral(resourceName: "magnemite"))
        let pokemon4 = PokemonType(PokemonTypeName: "Grass", PokemonCatchRate: 15.7, PokemonImage: #imageLiteral(resourceName: "gloom"))
        let pokemon5 = PokemonType(PokemonTypeName: "Grass", PokemonCatchRate: 33.3, PokemonImage: #imageLiteral(resourceName: "bellsprout"))
        let pokemon6 = PokemonType(PokemonTypeName: "Grass", PokemonCatchRate: 26.1, PokemonImage: #imageLiteral(resourceName: "tropius"))
        let pokemon7 = PokemonType(PokemonTypeName: "Flying", PokemonCatchRate: 5.9, PokemonImage: #imageLiteral(resourceName: "charizard"))
        let pokemon8 = PokemonType(PokemonTypeName: "Flying", PokemonCatchRate: 33.3, PokemonImage: #imageLiteral(resourceName: "spearow"))
        let pokemon9 = PokemonType(PokemonTypeName: "Flying", PokemonCatchRate: 24.8, PokemonImage: #imageLiteral(resourceName: "doduo"))
        pokemon.append(pokemon1)
        pokemon.append(pokemon2)
        pokemon.append(pokemon3)
        pokemon.append(pokemon4)
        pokemon.append(pokemon5)
        pokemon.append(pokemon6)
        pokemon.append(pokemon7)
        pokemon.append(pokemon8)
        pokemon.append(pokemon9)
        
        
    }
    
}
