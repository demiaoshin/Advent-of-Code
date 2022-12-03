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

var allchars = [Character]()

for n in stride(from: 0, to: numberOfRucksacks-2, by: 3) {
    var rchars = [Character:Int]()

    let rucksack = Set(rucksacks[n])
    let rucksack1 = Set(rucksacks[n+1])
    let rucksack2 = Set(rucksacks[n+2])

    let r1 = Set(rucksack)
    let r2 = Set(rucksack1)
    let r3 = Set(rucksack2)

    for char in r1 {
        rchars[char] = 1
    }

    for char in r2 {
        if let k = rchars[char] {
            rchars[char] = k+1
        } else {
            rchars[char] = 1
        }
    }

    for char in r3 {
        if let k = rchars[char] {
            rchars[char] = k+1
        } else {
            rchars[char] = 1
        }
    }

    for char in rchars {
        if char.value == 3 {
            allchars.append(char.key)
            break
        }
    }


    print(rchars)
    print(allchars)
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
print(stringchars)

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