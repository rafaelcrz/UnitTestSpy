@propertyWrapper public struct VerifyFuncArgs<T> {
    public var wrappedValue: ManagerVerifyFuncArguments<T>

    public init(wrappedValue: ManagerVerifyFuncArguments<T> = .init()) {
        self.wrappedValue = wrappedValue
    }
}
