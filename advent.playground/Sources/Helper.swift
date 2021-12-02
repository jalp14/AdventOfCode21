import Foundation

final class Helper {
    static func getData(from file: String, return dataAsInt: Bool) -> Any {
        let path = Bundle.main.path(forResource: file, ofType: "txt")
        let data = try! String(contentsOfFile: path!, encoding: .utf8)
            .split(separator: "\n")
        
        if dataAsInt {
            return data.compactMap { Int($0)! }
        } else {
            return data.compactMap { String($0) }
        }
    }
}
