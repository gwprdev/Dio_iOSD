import UIKit

// Nome: Gilvan Wemerson

let firstName = "Steve"
var lastName: String? = "Jobs"


print("\(firstName) \(lastName ?? "Wozniak")")

if let string = lastName {
    print ("\(firstName) \(string)")
}else{
    print ("\(firstName) Wozniak")
}
