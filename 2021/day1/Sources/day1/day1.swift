import util
import Foundation

@main
public struct day1 {
    public private(set) var text = "Hello, World!"
    public var samplefile = "/sampleinput.txt"
    public var file = "/input.txt"

    public static func main() {
        // print(day1().text)
        day1().real()
    }

    public func sample() -> [Int] {
        let values = util.getSampleIntInput(path: FileManager.default.currentDirectoryPath + day1().samplefile)
        return [day1().part1(values: values), day1().part2(values: values)]
    }

    public func real() {
        let values = util.getIntInput(path: FileManager.default.currentDirectoryPath + day1().file)
        print("Part 1: \(day1().part1(values: values))")
        print("Part 2: \(day1().part2(values: values))")
    }

    public func part1(values: [Int]) -> Int {
        var total = 0

        for n in 1...values.count-1 {
            if values[n] > values[n-1] {
                total += 1
            }
        }

        return total
    }

    public func part2(values: [Int]) -> Int {
        var total = 0

        for n in 1...values.count-3 {
            let sum1 = values[n-1] + values[n] + values[n+1]
            let sum2 = values[n] + values[n+1] + values[n+2]

            if sum2 > sum1 {
                total += 1
            }
        }
        return total

    }

}
