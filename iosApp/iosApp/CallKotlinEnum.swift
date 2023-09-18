import Foundation
import shared

class CallKotlinEnum {  
    func call(value: AnimalType) {
        switch value {
        case .cat:
            print("mewo")
        case .dog:
            print("bow")
        case .human:
            print("...")
        default:
            fatalError("unknown animal")
        }
    }
}
