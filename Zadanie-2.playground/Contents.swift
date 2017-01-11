//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Zwierzak {
    var name: String
    var species: String
    var weightInLbs: Float
    var picture: UIImage?
    var hasPicture: Bool {
        get {
        
            return self.picture != nil
            
            }
        }
    func description() -> String {
        
        func isThereAPicture() -> String {
            if hasPicture == true {
                return "Posiada zdjęcie"
            } else {
                return "Nie posiada zdjęcia"
            }
        }
        
        return name + " - " + species + " - " + isThereAPicture() //name and species inversely on purpose
       
        }
    

    init(name: String, species: String, weightInLbs: Float, picture: UIImage?) {
        self.name = name
        self.species = species
        self.weightInLbs = weightInLbs
        self.picture = picture
    }
    
    
}


var Sanic = Zwierzak(name: "Pimpek", species: "Pies", weightInLbs: 10, picture: nil)

Sanic.description()


extension Float {
    
    func convertToKg(weightInLbs: Float) -> Float {
    
    return weightInLbs*0.45359237

    }
}