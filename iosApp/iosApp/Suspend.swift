import Foundation
import shared

func callKmpSuspend() {
    let cancellationHandler = Skie_CancellationHandler()
    Task {
        try! await SuspendKt.callSuspend()
        try await _Concurrency.withTaskCancellationHandler(operation: {
            try await SuspendKt.callSuspend()
        }, onCancel: {
            cancellationHandler.cancel()
        })
    }
}
