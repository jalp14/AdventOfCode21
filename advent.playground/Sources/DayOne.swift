import Foundation

public class DayOne {
    public let defaultValues = Helper.getData(from: "Day1", return: true) as! [Int]
    
    public init() {
        print("--- Day 1 ---")
        
    }
    
    public func numberOfIncreases(for values: [Int]) {
        let answer = values.reduce((0, 3000)) { res, val in
            if val > res.1 {
                return (res.0 + 1, val)
            }
            return (res.0, val)
        }
        print(answer.0)
    }
    
    public func numberOfSlidingWindowValueIncreases() {
        var index = 0
        var toBeSummed: [Int] = []
        var currentSum = 0
        var chunkSize = 0
        
        while (true) {
            if index >= defaultValues.count { break }
            
            // Add values
            currentSum += defaultValues[index]
            // Increment Chunck Size
            chunkSize += 1
            
            // If chunk size is 3 append to the array
            if chunkSize == 3  {
                toBeSummed.append(currentSum)
                // Reset currentSum, chunckSize for the next chunck
                currentSum = 0
                chunkSize = 0
                
                // Set the index to previous one to follow the sliding window
                index -= 1
                continue
            }
            
            // Increment index
            index += 1
        }
        numberOfIncreases(for: toBeSummed)
    }
}
