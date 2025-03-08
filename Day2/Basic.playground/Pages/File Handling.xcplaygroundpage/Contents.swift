//: [Previous](@previous)

import Foundation

//document directory where file will be stored
func getDocumentsDirectory() -> URL {
    FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
}
let docURL = getDocumentsDirectory()

//

