final class TestUtil {
    static func getDescribeArgs(args: [Any], methodName: String) -> String? {
        guard !args.isEmpty else { return nil }
        
        return "\(methodName) - \(args.map { String(describing: $0) })"
    }
    
    static func wasCalledOnce(count: Int) -> Bool {
        return count == 1
    }
    
    static func wasCalled(count: Int, expectCount: Int) -> Bool {
        return count == expectCount
    }
    
    static func wasNeverCalled(count: Int) -> Bool {
        return count == 0
    }
}
