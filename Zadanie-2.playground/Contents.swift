//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Zwierzak {
    var name: String
    var species: String
    var picture: UIImage?
    var weightInLbs: Float
    var hasPicture: Bool {
        get {
        
            return self.picture != nil
            
            }
        }
    
    func isThereAPicture() -> String {
        if hasPicture {
            return "Posiada zdjęcie"
        } else {
            return "Nie posiada zdjęcia"
        }
    }
    
    func description() -> String {
        
        return name + " - " + species + " - " + isThereAPicture() + " - " + "Waga w kg: \(weightInLbs.convertToKg())" //name and species inversely on purpose
        
    }


    init(name: String, species: String, weightInLbs: Float, picture: UIImage?) {
        self.name = name
        self.species = species
        self.weightInLbs = weightInLbs
        self.picture = picture
    }
    
    
}


extension Float {
    
    func convertToKg() -> Float {
        
        return self*0.45359237
        
    }
}


var Sanic = Zwierzak(name: "Pimpek", species: "Pies", weightInLbs: 20.0, picture: nil)



Sanic.description()




