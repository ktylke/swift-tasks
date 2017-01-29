import UIKit

//Enter dimensions of the boxes within quotation marks below:

var dimensions: String = "2x3x4 5x6x7"

let dimensionsArray = dimensions.components(separatedBy: " ")

var boxDimArray = [Int]()
var boxSides = [Int]()
var boxLengths = [Int]()
var boxAreas = [Int]()

for box in dimensionsArray {
    let boxDimensions = box.components(separatedBy: "x")
    for i in 0..<boxDimensions.count {
        if let dimension = Int(boxDimensions[i]) {
            boxDimArray.append(dimension)
        }
    }
    
    
    for i in 1...3 {
        if i != 3 {
        var boxSide = boxDimArray[i-1]*boxDimArray[i]
            boxSides.append(boxSide)
        } else {
        var boxSide = boxDimArray[0]*boxDimArray[2]
            boxSides.append(boxSide)
        }
    }
    
    var sideMin = boxSides.reduce(Int.max, { min($0, $1) })
    var sum = 2*(boxSides.reduce(0, +)) + sideMin
    
    boxAreas.append(sum)
    boxSides.removeAll()
    
    var dimQuot = boxDimArray.reduce(1, *)
    var dimMax = boxDimArray.reduce(Int.min, {max($0, $1) })
    boxDimArray = boxDimArray.filter(){$0 != dimMax}
    
    var lengthOfRibbon = 2*boxDimArray[0]+2*boxDimArray[1]+dimQuot
    boxLengths.append(lengthOfRibbon)
    
    boxDimArray.removeAll()
}

var areaSum = boxAreas.reduce(0, +)
var lengthSum = boxLengths.reduce(0, +)

print("You will need \(areaSum) square units of paper to pack the boxes")
print("You will need \(lengthSum) units of ribbon to pack the boxes")




