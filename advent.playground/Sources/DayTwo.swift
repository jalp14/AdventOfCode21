import Foundation

enum Direction {
    case forward(Int)
    case down(Int)
    case up(Int)
    case none
}

public class DayTwo {
    var directions: [Direction] = []
    public let values = Helper.getData(from: "Day2", return: false) as! [String]
    
    
    public init() {
        print("\n--- Day 2 ---")
        setUpDirections()
    }
    
    func setUpDirections() {
        directions = values.compactMap { instruction -> Direction in
            let direction = instruction.split(separator: " ")
            let directionValue = Int(direction[1])
            
            switch direction[0] {
            case "forward":
                return .forward(directionValue!)
            case "down":
                return .down(directionValue!)
            case "up":
                return .up(directionValue!)
            default:
                return .none
            }
        }
    }
    
    
    public func solution(useAim: Bool) {
        var horizontalValue = 0
        var depthValue = 0
        var aimValue = 0
        
        for direction in directions {
            switch direction {
            case .forward(let value):
                horizontalValue += value
                if useAim {
                    depthValue += aimValue * value
                }
            case .down(let value):
                if useAim {
                    aimValue += value
                } else {
                    depthValue += value
                }
            case .up(let value):
                if useAim {
                    aimValue -= value
                } else {
                    depthValue -= value
                }
            case .none:
                break
            }
        }
        print("Horizontal: \(horizontalValue), Depth: \(depthValue), Product: \(horizontalValue * depthValue)")
    }
}
