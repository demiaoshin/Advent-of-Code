import Foundation
import util

class day4 {
    let file = "/Sources/2022/day4/input.txt"
    var values = [String]()

    init() {
        let path = FileManager.default.currentDirectoryPath + file
        values = util.getStrInput(path: path)
    }

    func part1and2() {
        var part1 = 0
        var part2 = 0

        for value in values {
            let ranges = value.components(separatedBy: ",")
            let range1 = ranges[0].components(separatedBy: "-")
            let range2 = ranges[1].components(separatedBy: "-")

            let r1 = Set(Int(range1[0])!...Int(range1[1])!)
            let r2 = Set(Int(range2[0])!...Int(range2[1])!)

            if r1.intersection(r2) != [] {
                part2 += 1
            }

            if r1.isSubset(of: r2) {
                part1 += 1
                continue
            } 

            if r2.isSubset(of: r1) {
                part1 += 1
                continue
            }
        }

        print(part1)
        print(part2)
    }
}