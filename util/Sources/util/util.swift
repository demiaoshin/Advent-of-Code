import Foundation

public func getStrInput(path: String) -> [String] {
    do {
        let result = try String(contentsOf:  URL(fileURLWithPath: path), encoding: .utf8)
        let rows = result.components(separatedBy: "\n\n")
        var values = rows[0].components(separatedBy: "\n")
        if values.last == "" {
            values.removeLast()
        }
        return values
    } catch {
        print("error")
        return []
    }
}

public func getIntInput(path: String) -> [Int] {
    do {
        let result = try String(contentsOf:  URL(fileURLWithPath: path), encoding: .utf8)
        let rows = result.components(separatedBy: "\n\n")
        var strvalues = rows[0].components(separatedBy: "\n")
        if strvalues.last == "" {
            strvalues.removeLast()
        }
        let intvalues = strvalues.map{ Int($0)!}
        return intvalues
    } catch {
        print("error")
        return []
    }
}

public func day1SampleInput(path: String) -> [String] {
    do {
        let result = try String(contentsOf:  URL(fileURLWithPath: path), encoding: .utf8)
        let rows = result.components(separatedBy: "\n\n")
        return rows
    } catch {
        print("error")
        return []
    }
}

public func day1Input(path: String) -> [String] {
    do {
        let result = try String(contentsOf:  URL(fileURLWithPath: path), encoding: .utf8)
        var rows = result.components(separatedBy: "\n\n")
        rows.removeLast()
        return rows
    } catch {
        print("error")
        return []
    }
}