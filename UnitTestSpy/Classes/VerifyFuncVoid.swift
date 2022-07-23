@propertyWrapper public struct VerifyFuncVoid {
    public var wrappedValue: ManagerVerifyFuncVoid
    
    public init(wrappedValue: ManagerVerifyFuncVoid = .init()) {
        self.wrappedValue = wrappedValue
    }
}
