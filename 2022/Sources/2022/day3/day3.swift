import Foundation
import util

class day3 {
    let file = "/input.txt"
    var values = [String]()

    let lowercase = "abcdefghijklmnopqrstuvwxyz"
    let uppercase = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    var lowercaseP = [Character: Int]()
    var uppercaseP = [Character: Int]()

    init() {
        self.setup()
        let path = FileManager.default.currentDirectoryPath + file
        let rucksacks = util.getIntInput(path: path)
        self.part1(rucksacks: rucksacks)
        self.part2(rucksacks: rucksacks)
    }

    func setup() {
        var i = 1
        for char in lowercase {
            lowercaseP[char] = i
            i += 1
        }

        i = 27
        for char in uppercase {
            uppercaseP[char] = i
            i += 1
        }
    }


    func part1(rucksacks: [Int]) -> Int {
        var numberOfRucksacks = rucksacks.count
        var total = 0
        var allchars = [Character]()

        
        // for n in 0...numberOfRucksacks-2 {
        //     let rucksack = rucksacks[n]

        //     let rLength = rucksack.count

        //     let p1 = rucksack.prefix(rLength/2)
        //     let p2 = rucksack.suffix(rLength/2)

        //     for char in p1 {
        //         if p2.contains(char) {
        //             allchars.append(char)
        //             break
        //         }
        //     }
        // }

        // let stringchars = String(allchars)

        // for char in stringchars {
        //     if let point = lowercaseP[char] {
        //         total += point
        //         print(point)
        //     } else if let point = uppercaseP[char] {
        //         total += point
        //         print(point)
        //     }
        // }

        return total
    }

    func part2(rucksacks: [Int]) -> Int {
        var numberOfRucksacks = rucksacks.count
        var total = 0
        var allchars = [Character]()

        // for n in stride(from: 0, to: numberOfRucksacks-2, by: 3) {
        //     var rchars = [Character:Int]()

        //     let rucksack = Set(rucksacks[n])
        //     let rucksack1 = Set(rucksacks[n+1])
        //     let rucksack2 = Set(rucksacks[n+2])

        //     let r1 = Set(rucksack)
        //     let r2 = Set(rucksack1)
        //     let r3 = Set(rucksack2)

        //     for char in r1 {
        //         rchars[char] = 1
        //     }

        //     for char in r2 {
        //         if let k = rchars[char] {
        //             rchars[char] = k+1
        //         } else {
        //             rchars[char] = 1
        //         }
        //     }

        //     for char in r3 {
        //         if let k = rchars[char] {
        //             rchars[char] = k+1
        //         } else {
        //             rchars[char] = 1
        //         }
        //     }

        //     for char in rchars {
        //         if char.value == 3 {
        //             allchars.append(char.key)
        //             break
        //         }
        //     }


        //     print(rchars)
        //     print(allchars)
        // }

        // let stringchars = String(allchars)

        // for char in stringchars {
        //     if let point = lowercaseP[char] {
        //         total += point
        //     } else if let point = uppercaseP[char] {
        //         total += point
        //     }
        // }

        // print("Final Score: \(total)")

        return total
    }
}


