import Foundation
import shared

func callKmpSuspend() {
    let task = Task {
        do {
            try await SuspendKt.callSuspend()
        } catch {
            guard !Task.isCancelled else { return }
            // TODO: handle error
        }
    }
}
