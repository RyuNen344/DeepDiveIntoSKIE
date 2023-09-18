import Foundation
import shared

class CallSealedClass {
    func call(error: SealedError) {
        switch onEnum(of: error) {
        case .iOError(let ioError):
            switch onEnum(of: ioError) {
            case .databaseError(let db):
                print("database error \(db.source)")
            case .fileReadError(let file):
                print("file read error \(file.file)")
            }
        case .runtimeError(_):
            print("runtime error")
        }
    }
}
