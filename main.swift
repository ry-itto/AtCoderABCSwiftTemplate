protocol InitFromString {
    init?(_ str: String)
}

extension Int: InitFromString {}
extension Int8: InitFromString {}
extension Int16: InitFromString {}
extension Int32: InitFromString {}
extension Int64: InitFromString {}
extension String: InitFromString {}

func input<T: InitFromString>() -> [T] {
    readLine()!.split(separator: " ").map(String.init).compactMap(T.init)
}

