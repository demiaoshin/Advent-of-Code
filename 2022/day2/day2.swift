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

// get each value
let values = result.components(separatedBy: "\n\n")

// get each round in its own string
let rounds = values[0].components(separatedBy: "\n")

// get number of rounds
var numberOfRounds = rounds.count

// maps for each round
let points = ["X": 1, "Y": 2, "Z": 3]

let draws = ["A": "X", "B": "Y", "C": "Z"]

let wins = ["X": "C", "Y": "A", "Z": "B"]

// player 2 score
var player2 = 0

// loop through list to total each elve and add them to totalElves
for n in 0...numberOfRounds-2 {
    let round = rounds[n]
    
    let p1: String = String(round[round.index(round.startIndex, offsetBy: 0)])
    let p2: String = String(round[round.index(round.startIndex, offsetBy: 2)])
    
    if (draws[p1]! == p2) {
        print("drawawwwwwwwwwww")
        player2 += 3
        player2 += points[p2]!
    } else if (wins[p2]! == p1) {
        print("winnnnnnnnnnn")
        player2 += 6
        player2 += points[p2]!
    } else {
        player2 += 0
        player2 += points[p2]!
    }
}

print("Final Score: \(player2)")
