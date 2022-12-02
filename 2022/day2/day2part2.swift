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

// store round score here
var totalElves = [Int]()

// get each round in its own string
let rounds = values[0].components(separatedBy: "\n")

// get number of rounds
var numberOfRounds = rounds.count

// maps for each round
let points = ["A": 1, "B": 2, "C": 3]

let wins = ["A": "B", "B": "C", "C": "A"]

let loses = ["A": "C", "B": "A", "C": "B"]

// player 2 score
var player2 = 0

var tempDec = ""

// loop through each round
for n in 0...numberOfRounds-2 {
    let round = rounds[n]
    
    let p1: String = String(round[round.index(round.startIndex, offsetBy: 0)])
    let p2: String = String(round[round.index(round.startIndex, offsetBy: 2)])
    
    if (p2 == "X") {
        print("lose")
        player2 += 0
        tempDec = loses[p1]!
        player2 += points[tempDec]!
    } else if (p2 == "Y") {
        print("draw")
        player2 += 3
        player2 += points[p1]!
    } else if (p2 == "Z") {
        print("win")
        player2 += 6
        tempDec = wins[p1]!
        player2 += points[tempDec]!
    }
}

print("Final Score: \(player2)")

