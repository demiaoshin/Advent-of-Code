import Foundation

public func getStrInput(path: String) -> [String] {
    do {
        let result = try String(contentsOf:  URL(fileURLWithPath: path), encoding: .utf8)
        let rows = result.components(separatedBy: "\n\n")
        var values = rows[0].components(separatedBy: "\n")
        // get rid of the empty ""
        values.removeLast()
        return values
    } catch {
        print("error")
        return []
    }
}

public func getSampleStrInput(path: String) -> [String] {
    do {
        let result = try String(contentsOf:  URL(fileURLWithPath: path), encoding: .utf8)
        let rows = result.components(separatedBy: "\n\n")
        let values = rows[0].components(separatedBy: "\n")
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
        // get rid of the empty ""
        strvalues.removeLast()
        let intvalues = strvalues.map{ Int($0)!}
        return intvalues
    } catch {
        print("error")
        return []
    }
}

public func getSampleIntInput(path: String) -> [Int] {
    do {
        let result = try String(contentsOf:  URL(fileURLWithPath: path), encoding: .utf8)
        let rows = result.components(separatedBy: "\n\n")
        let strvalues = rows[0].components(separatedBy: "\n")
        let intvalues = strvalues.map{ Int($0)!}
        return intvalues
    } catch {
        print("error")
        return []
    }
}
