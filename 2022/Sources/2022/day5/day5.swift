import Foundation
import util

class day5 {
    let file = "/Sources/2022/day5/sampleinput.txt"
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

    func part1() {
        let rows = data.components(separatedBy: "\n\n")
        let m = rows[0].components(separatedBy: "\n")
        for n in stride(from: 3, to: 0, by: -1) {
            if m
        }
        print(m)
    }
}