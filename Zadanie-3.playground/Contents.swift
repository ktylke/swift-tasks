import UIKit

//Enter dimensions of the boxes within quotation marks below:

var dimensions: String = "2x2x2 3x4x5"

let dimensionsArray = dimensions.components(separatedBy: " ")

var boxDimArray = [Int]()
var boxLengths = [Int]()
var boxAreas = [Int]()

for box in dimensionsArray {
    let boxDimensions = box.components(separatedBy: "x")
    boxDimArray = boxDimensions.flatMap { Int($0) }
    
    if boxDimArray.count != 3 || boxDimArray.contains(0) {
        print("Something's wrong with your boxes!")
    }
    
    var boxSide1 = boxDimArray[0] * boxDimArray[1]
    var boxSide2 = boxDimArray[1] * boxDimArray[2]
    var boxSide3 = boxDimArray[0] * boxDimArray[2] //could use a loop here but the code would be more cluttered and longer
    
    var boxSides = [boxSide1, boxSide2, boxSide3]
    
    var sideMin = boxSides.reduce(Int.max, { min($0, $1) })
    var sum = 2 * (boxSides.reduce(0, +)) + sideMin
    
    boxAreas.append(sum)
    
    var boxDimAsc = boxDimArray.sorted(by: <) //sorting dimensions in ascending order to obtain two smallest values easily
    
    var lengthOfRibbon = 2 * (boxDimAsc[0]+boxDimAsc[1]) + boxDimArray.reduce(1, *)
    boxLengths.append(lengthOfRibbon)
}

var areaSum = boxAreas.reduce(0, +)
var lengthSum = boxLengths.reduce(0, +)

print("You will need \(areaSum) square units of paper to pack the boxes")
print("You will need \(lengthSum) units of ribbon to pack the boxes")




