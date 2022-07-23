import Foundation

public protocol ManagerVerifyFuncProtocol {
    associatedtype T
    
    var count: Int { get }
    var args: [T] { get }
    var funcName: String { get }
    
    func getDescribeArgs() -> String?
    
    func wasCalledOnce(
        file: StaticString,
        line: UInt
    ) -> Bool
    
    func wasCalled(
        count: Int,
        file: StaticString,
        line: UInt
    ) -> Bool
    
    func wasNeverCalled(
        file: StaticString,
        line: UInt
    ) -> Bool
}
