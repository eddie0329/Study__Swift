import UIKit

func gradingStudents(grades: [Int]) -> [Int] {
    return grades.map{ (result: Int) -> Int in
        let nextMutipleOfFive: Int = result + (5 - result % 5)
        var finalGrade: Int = 0
        if nextMutipleOfFive - result < 3 {
            finalGrade = nextMutipleOfFive
        } else {
            finalGrade = result
        }
        
        if finalGrade < 40 {
            return result
        } else {
            return finalGrade
        }
    }
}

print(gradingStudents(grades: [73, 67, 38, 33]))
