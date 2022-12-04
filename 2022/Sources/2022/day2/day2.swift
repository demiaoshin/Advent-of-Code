import Foundation
import util

class day2 {
    let file = "/input.txt"
    var values = [String]()
    let points = ["X": 1, "Y": 2, "Z": 3]
    let draws = ["A": "X", "B": "Y", "C": "Z"]
    let wins = ["X": "C", "Y": "A", "Z": "B"]

    init() {
        let path = FileManager.default.currentDirectoryPath + file
        let rounds = util.getIntInput(path: path)
        self.part1(rounds: rounds)
        self.part2(rounds: rounds)
    }

    func part1(rounds: [Int]) -> Int {
        var numberOfRounds = rounds.count
        var player2 = 0

        // for n in 0...numberOfRounds-2 {
        //     let round = rounds[n]
            
        //     let p1: String = String(round[round.index(round.startIndex, offsetBy: 0)])
        //     let p2: String = String(round[round.index(round.startIndex, offsetBy: 2)])
            
        //     if (draws[p1]! == p2) {
        //         print("drawawwwwwwwwwww")
        //         player2 += 3
        //         player2 += points[p2]!
        //     } else if (wins[p2]! == p1) {
        //         print("winnnnnnnnnnn")
        //         player2 += 6
        //         player2 += points[p2]!
        //     } else {
        //         player2 += 0
        //         player2 += points[p2]!
        //     }
        // }

        // print("Final Score: \(player2)")
        return player2
    }

    func part2(rounds: [Int]) -> Int {
        var numberOfRounds = rounds.count
        var player2 = 0
        var tempDec = ""

        // for n in 0...numberOfRounds-2 {
        //     let round = rounds[n]
            
        //     let p1: String = String(round[round.index(round.startIndex, offsetBy: 0)])
        //     let p2: String = String(round[round.index(round.startIndex, offsetBy: 2)])
            
        //     if (p2 == "X") {
        //         print("lose")
        //         player2 += 0
        //         tempDec = loses[p1]!
        //         player2 += points[tempDec]!
        //     } else if (p2 == "Y") {
        //         print("draw")
        //         player2 += 3
        //         player2 += points[p1]!
        //     } else if (p2 == "Z") {
        //         print("win")
        //         player2 += 6
        //         tempDec = wins[p1]!
        //         player2 += points[tempDec]!
        //     }
        // }

        // print("Final Score: \(player2)")
        return player2
    }
}




