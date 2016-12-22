//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Zwierzak {
    var name: String
    var species: String
    var picture: UIImage?
    
    func isThereAPicture() -> String {     //determines if there is a picture
        
        if picture != nil {
        
            return "Posiada zdjęcie"
          
        } else {
            
            return "Nie posiada zdjęcia"
        }
    }
        

    func description() -> String {
        
        return name + " - " + species + " – " + isThereAPicture() // name and species inversely on purpose
    }
    
    init(name: String, species: String, picture: UIImage?) {
        self.name = name
        self.species = species
        self.picture = picture
    }
}

var Sanic = Zwierzak(name: "Sanic", species: "The hedgehog", picture: nil)

Sanic.description()