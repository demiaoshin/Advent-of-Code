import Foundation
import util

class day3 {
    let file = "/Sources/2022/day3/input.txt"
    let chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
    var charP = [Character: Int]()
    var rucksacks = [String]()

    init() {
        self.setup()
        let path = FileManager.default.currentDirectoryPath + file
        rucksacks = util.getStrInput(path: path)
    }

    func setup() {
        var i = 1
        for char in chars {
            charP[char] = i
            i += 1
        }
    }

    func part1() {
        var total = 0
        
        for n in 0...rucksacks.count-1 {
            let commonchar = Array(Set(rucksacks[n].prefix(rucksacks[n].count/2)).intersection(Set(rucksacks[n].suffix(rucksacks[n].count/2))))

            total += charP[commonchar[0]]!
        }

        print("Part 1: \(total)")
    }

    func part2() {
        var total = 0

        for n in stride(from: 0, to: rucksacks.count-2, by: 3) {
            let commonchar = Array(Set(rucksacks[n]).intersection(Set(rucksacks[n+1])).intersection(Set(rucksacks[n+2])))

            total += charP[commonchar[0]]!
        }

        print("Part 2: \(total)")
    }
}

