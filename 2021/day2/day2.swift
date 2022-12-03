let file = "/sampleinput.txt"
var result = ""
result = try String(contentsOf:  URL(fileURLWithPath: FileManager.default.currentDirectoryPath + file), 
encoding: .utf8)
let values = result.components(separatedBy: "\n\n")