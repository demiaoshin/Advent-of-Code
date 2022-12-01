import Foundation

// input file
let file = "/input.txt"

// store file data here
var result = ""

// current path of input file as string
let path = FileManager.default.currentDirectoryPath + file

// path as URL
let fileURL = URL(fileURLWithPath: path)

// store file data into result
result = try String(contentsOf: fileURL, encoding: .utf8)

// get each elve
let values = result.components(separatedBy: "\n\n")

// get number of elves here
var numberOfElves = values.count

// store elve total here
var totalElves = [Int]()

// temp variable for each elve sum
var elveSum = 0

// loop through list to total each elve and add them to totalElves
for n in 0...numberOfElves-1 {
    let elve = values[n].components(separatedBy: "\n")
    
    for item in elve {
        elveSum += Int(item) ?? 0
    }
    
    totalElves.append(elveSum)
    
    elveSum = 0
}

// part 1
print("Highest calorie Elve: \(totalElves.max()!)")


// part 2
totalElves.sort(by: >)
let top3 = totalElves[0] + totalElves[1] + totalElves[2]
print("Top 3 highest calorie elves: \(top3)")
