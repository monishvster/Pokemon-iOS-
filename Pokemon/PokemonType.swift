//
//  PokemonType.swift
//  Pokemon
//
//  Created by sainathreddy on 2/25/17.
//  Copyright © 2017 Verma,Monish. All rights reserved.
//
import UIKit
import Foundation

class PokemonType {
    
    var PokemonTypeName:String = ""
    var PokemonCatchRate:Double = 0.0
    var PokemonImage:UIImage
    
    var PokemonDictionary:[String:Pokemon] = [:]
    
    
    
    init(PokemonTypeName:String,PokemonCatchRate:Double,PokemonImage:UIImage) {
        self.PokemonTypeName = PokemonTypeName
        self.PokemonCatchRate = PokemonCatchRate
        self.PokemonImage = PokemonImage
    }
    
    func displayOrder() ->[String:[Double]] {
        
        
    }
    
    func updateCatchRate(PokemonName:String) {
        
    }
    
    func addPokemon(Pokemon:Pokemon) {
        
    }
}
