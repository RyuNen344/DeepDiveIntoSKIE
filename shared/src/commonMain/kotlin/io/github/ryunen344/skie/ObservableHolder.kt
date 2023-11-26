package io.github.ryunen344.skie

import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.asStateFlow

class ObservableHolder {
    private val _state: MutableStateFlow<Int> = MutableStateFlow(0)
    val state = _state.asStateFlow()

    fun print() {
        println(_state)
        println(state)
    }
}
