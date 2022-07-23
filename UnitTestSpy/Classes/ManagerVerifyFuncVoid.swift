public struct ManagerVerifyFuncVoid {
    private(set) public var count: Int = 0
    private(set) public var funcName: String = ""
    
    public init() {}
    
    public mutating func call(methodName: StaticString = #function) {
        count += 1
        self.funcName = methodName.description
    }
    
    public mutating func reset() {
        count = 0
    }
}

// MARK: - ManagerVerifyMethodProtocol
extension ManagerVerifyFuncVoid: ManagerVerifyFuncProtocol {
    public var args: [String?] {
        return []
    }
    
    public func getDescribeArgs() -> String? {
        return TestUtil.getDescribeArgs(args: [], methodName: funcName)
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
