import Foundation
import util

class day5 {
    let file = "/Sources/2022/day5/input.txt"
    var values = [String]()
    var data = ""

    init() {
        let path = FileManager.default.currentDirectoryPath + file
        do {
            data = try String(contentsOf:  URL(fileURLWithPath: path), encoding: .utf8)
        } catch {
            print("waaaaaaa")
        }
        
    }

    // func part2() {
    //     var mystr = "hellooooooo"
    //     var letter = Array(mystr)[0]

    //     print(letter)
    // }

    func part1() {
        let rows = data.components(separatedBy: "\n\n")
        var m = rows[0].components(separatedBy: "\n")
        var rules = rows[1].components(separatedBy: "\n")
        m.removeLast()
        rules.removeLast()
        var p = 1

        var allteams: [Int: [Character]] = [:]

        for row in m {
            for n in stride(from: 1, to: row.count-1, by: 4) {
                let i = row.index(row.startIndex, offsetBy: n)

                if p == 9 {
                    var charar = allteams[p] ?? []
                    charar.append(row[i])
                    allteams[p] = charar
                    p = 1
                } else {
                    var charar = allteams[p] ?? []
                    charar.append(row[i])
                    allteams[p] = charar
                    p += 1
                }

                print(allteams)
            }
        }

        for n in 1...9 {
            var charr = allteams[n] ?? []
            print("current row: \(charr)")
            let charcount = charr.count
            while charr[0] == " " {
                charr.removeFirst()
                print(charr)
            }
            charr.reverse()
            allteams[n] = charr
        }

        print(allteams)

        for rule in rules {
            print(rule)
            var fi = 12
            var ti = 17

            let moveindex = rule.index(rule.startIndex, offsetBy: 5)
            let moveplusindex = rule.index(rule.startIndex, offsetBy: 6)

            var moves: [Character] = [rule[moveindex]]
            
            var o = String(moves)
            var move = Int(o) ?? 0

            if rule[moveplusindex] != " " {
                fi += 1
                ti += 1
                moves.append(rule[moveplusindex])
                let v = String(moves)
                move = Int(v) ?? 0
                print(move)
            }

            let fromindex = rule.index(rule.startIndex, offsetBy: fi)
            let toindex = rule.index(rule.startIndex, offsetBy: ti)

            let froms = rule[fromindex]
            let tos = rule[toindex] 

            let from: Int = froms.wholeNumberValue!
            let to: Int = tos.wholeNumberValue!

            var lastItems = [Character]()

            while move > 0 {
                var tempchar = allteams[from] ?? []
                lastItems.append(tempchar.popLast()!)
                allteams[from] = tempchar
                move -= 1
            }

            var othertemp = allteams[to] ?? []
            lastItems.reverse()
            othertemp += lastItems
            allteams[to] = othertemp
            print(allteams)
        }

        var answers = [Character]()

        for n in 1...9 {
            let charararar = allteams[n] ?? []
            answers.append(charararar[charararar.count-1])
        }

        print(String(answers))
    }
}