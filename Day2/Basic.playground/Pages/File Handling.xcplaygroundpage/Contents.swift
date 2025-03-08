//: [Previous](@previous)

import Foundation

//document directory where file will be stored
func getDocumentsDirectory() -> URL {
    FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
}
let docURL = getDocumentsDirectory()

//
func writeFile() {
    let fileURL = getDocumentsDirectory().appendingPathComponent("example.txt")
    let text = "file handling in swift."
    
    do {
        try text.write(to: fileURL, atomically: true, encoding: .utf8)
        print("file written successfully")
    } catch {
        print("error in wrting to the file")
    }
}

//writeFile()

func readFile() {
    let fileURL = getDocumentsDirectory().appendingPathComponent("example.txt")
    
    do {
        let content = try String(contentsOf: fileURL, encoding: .utf8)
        print("File content: \(content)")
    } catch {
        print("file not found, \(error)")
    }
}

readFile()
