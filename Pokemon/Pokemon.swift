//
//  PokemonType.swift
//  Pokemon
//
//  Copyright © 2017 Verma,Monish. All rights reserved.
//

import Foundation
import UIKit


class Pokemon {
    
    var PokemonName:String
    var PokemonCatchRate:Double
    var PokemonImage:UIImage
    
    
    
    init(PokemonName:String,PokemonCatchRate:Double,PokemonImage:UIImage) {
        self.PokemonName = PokemonName
        self.PokemonCatchRate = PokemonCatchRate
        self.PokemonImage = PokemonImage
    }
    

}
