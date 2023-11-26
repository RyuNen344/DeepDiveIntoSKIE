import Foundation
import shared

struct FlowCheck {
    func hoge() async {
        let holder = ObservableHolder()
        Task {
            holder.print()
            for await num in holder.state {
                print(num)
            }
        }
    }
}
