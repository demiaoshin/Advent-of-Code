import Foundation

// input file
let file = "/input.txt"

// store file data here
var result = ""

// current path of input file as string
let path = FileManager.default.currentDirectoryPath + file

// path as URL
let fileURL = URL(fileURLWithPath: path)

// store file data into result
result = try String(contentsOf: fileURL, encoding: .utf8)

// get each value
let values = result.components(separatedBy: "\n\n")

// get each round in its own string
let rucksacks = values[0].components(separatedBy: "\n")

// get number of rounds
var numberOfRucksacks = rucksacks.count

// total
var total = 0

print(lowercase)

var allchars = [Character]()

for n in 0...numberOfRucksacks-2 {
    let rucksack = rucksacks[n]

    let rLength = rucksack.count

    let p1 = rucksack.prefix(rLength/2)
    let p2 = rucksack.suffix(rLength/2)

    for char in p1 {
        if p2.contains(char) {
            allchars.append(char)
            break
        }
    }
   
}

let lowercase = "abcdefghijklmnopqrstuvwxyz"
let uppercase = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

var lowercaseP = [Character: Int]()
var uppercaseP = [Character: Int]()

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

let stringchars = String(allchars)

for char in stringchars {
    if let point = lowercaseP[char] {
        total += point
        print(point)
    } else if let point = uppercaseP[char] {
        total += point
        print(point)
    }
}

print("Final Score: \(total)")
