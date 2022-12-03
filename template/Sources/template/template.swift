@main
public struct template {
    public var samplefile = "/sampleinput.txt"
    public var file = "/input.txt"

    public static func main() {
       
    }

    public func real() {
        // change to int or str if needed
        let values = util.getIntInput(path: FileManager.default.currentDirectoryPath + dayN().file)
        print("Part 1: \(dayN().part1(values: values))")
        print("Part 2: \(dayN().part2(values: values))")
    }
}
