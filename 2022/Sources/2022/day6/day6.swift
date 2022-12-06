import Foundation
import util


class day6 {
    let file = "/Sources/2022/day6/input.txt"
    var data = [String]()


    init() {
        let path = FileManager.default.currentDirectoryPath + file
        data = util.getStrInput(path: path)
    }

    func part1() {
        var code = data[0]
        var testset = Set<Character>()
        var i = 0

        while testset.count != 4 {
            testset = Set(code.prefix(4))
            code.removeFirst()
            i += 1
        }

        print(i + 3)
    }

    func part2() {
        var code = data[0]
        var testset = Set<Character>()
        var i = 0

        while testset.count != 14 {
            testset = Set(code.prefix(14))
            code.removeFirst()
            i += 1
        }

        print(i + 13)
    }
}