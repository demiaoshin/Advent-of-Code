import Foundation
import util

class day1 {
    let file = "/Sources/2022/day1/input.txt"
    var values = [String]()

    init() {
        let path = FileManager.default.currentDirectoryPath + file
        values = util.day1Input(path: path)
    }

    func part1and2() {
        let numberOfElves = values.count
        var totalElves = [Int]()
        var elveSum = 0

        for n in 0...numberOfElves-1 {
            let elve = values[n].components(separatedBy: "\n")
        
            for item in elve {
                elveSum += Int(item) ?? 0
            }
            
            totalElves.append(elveSum)
        
            elveSum = 0
        }

        print("Highest calorie Elve: \(totalElves.max()!)")

        totalElves.sort(by: >)
        let top3 = totalElves[0] + totalElves[1] + totalElves[2]
        print("Top 3 highest calorie elves: \(top3)")
    }
}
