import Foundation
import shared

class CallSealedClass {
    func call(error: SealedError) {
        switch error {
        case let error as IOError:
            print("io error")
            switch error {
                case let io as FileReadError:
                    print("file read error \(io.file)")
            case let database as DatabaseError:
                    print("database error \(database.source)")
                default:
                    fatalError("unknown io error")
            }
        case _ as RuntimeError:
            print("runtime error")
        default:
            fatalError("unknown error")
        }
    }
}
