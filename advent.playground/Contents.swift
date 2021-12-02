//
// advent.playground
//
// Created by Jalp Desai on 01/12/2021
//

import Foundation

// Implementation can be found in the Sources folder. Everyting is public in there because Playground needs things to be public to access it apparently 🧐


// MARK: Day 1
let dayOneSolutions = DayOne()
dayOneSolutions.numberOfIncreases(for: dayOneSolutions.defaultValues)
dayOneSolutions.numberOfSlidingWindowValueIncreases()

// MARK: Day 2
let dayTwoSolutions = DayTwo()
dayTwoSolutions.solution(useAim: false)
dayTwoSolutions.solution(useAim: true)
