public struct ManagerVerifyFuncArguments<T>: ManagerVerifyFuncProtocol {
    private(set) public var count: Int = 0
    private(set) public var args: [T] = []
    private(set) public var funcName: String = ""

    public init() {}

    public mutating func append(args: T, methodName: StaticString = #function) {
        count += 1
        self.args.append(args)
        self.funcName = methodName.description
    }

    public func getArgument() -> T? {
        return args.first
    }

    public func getArguments() -> [T] {
        return args
    }

    public func getDescribeArgs() -> String? {
        return TestUtil.getDescribeArgs(args: args, methodName: funcName)
    }

    public func wasCalledOnce(file: StaticString, line: UInt) -> Bool {
        return TestUtil.wasCalledOnce(count: count)
    }

    public func wasCalled(count: Int, file: StaticString, line: UInt) -> Bool {
        return TestUtil.wasCalled(count: self.count, expectCount: count)
    }

    public func wasNeverCalled(file: StaticString, line: UInt) -> Bool {
        return TestUtil.wasNeverCalled(count: count)
    }
}
