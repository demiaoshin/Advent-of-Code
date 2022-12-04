import Foundation
import util

class day1 {
    let file = "/Sources/2022/day1/input.txt"
    var values = [Int]()

    init() {
        let path = FileManager.default.currentDirectoryPath + file
        values = util.getIntInput(path: path)
        self.part1and2()
    }

    func part1and2() -> [Int] {
        // var numberOfElves = values.count
        // var totalElves = [Int]()
        // var elveSum = 0

        // print(values)

        // for n in 0...numberOfElves-1 {
            // print(elve)
            // let elve = values[n].components(separatedBy: "\n")
        
            // for item in elve {
            //     elveSum += item
            // }
            
            // totalElves.append(elveSum)
        
            // elveSum = 0
        // }

        // print("Highest calorie Elve: \(totalElves.max()!)")

        // totalElves.sort(by: >)
        // let top3 = totalElves[0] + totalElves[1] + totalElves[2]
        // print("Top 3 highest calorie elves: \(top3)")

        // return [totalElves.max()!, top3]
        return [3, 4]
    }
}
