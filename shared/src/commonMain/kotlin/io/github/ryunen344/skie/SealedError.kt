package io.github.ryunen344.skie

sealed interface SealedError

sealed class IOError : SealedError

class FileReadError(val file: String) : IOError()
class DatabaseError(val source: String) : IOError()

data object RuntimeError : SealedError
