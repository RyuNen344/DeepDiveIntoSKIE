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
    
    func call(value: Color) {
        switch value {
        case .red:
            print(value.rgb)
        case .green:
            print(value.rgb)
        case .blue:
            print(value.rgb)
        default:
            fatalError("unknown color")
        }
    }
}
