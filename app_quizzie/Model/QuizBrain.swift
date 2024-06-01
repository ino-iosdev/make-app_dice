
import Foundation

struct QuizBrain {
    
    let questions = [
        
        Question(Q: "Ino is awesome.", A: "True"),
        Question(Q: "The Mona Lisa has no eyebrows.", A: "True"),
        Question(Q: "Australia is wider than the moon.", A: "True"),
        Question(Q: "A group of crows is called a murder.", A: "True"),
        Question(Q: "The first computer bug was a real insect found in a computer.", A: "True"),
        Question(Q: "The Linux operating system is open-source.", A: "True"),
        Question(Q: "Python uses curly braces {} to define code blocks.", A: "False"),
        Question(Q: "Java is an interpreted language.", A: "False"),
        Question(Q: "The 'Git' in Git version control stands for 'Global Information Tracker'.", A: "False")
        
    ]
    
    var questionNumber = 0
    var score = 0
    
    mutating func checkAnswer(userAnswer: String) -> Bool {
        if userAnswer == questions[questionNumber].answer {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    func getScore() -> Int {
        return score
    }
    
    func getQuestionText() -> String {
        return questions[questionNumber].text
    }
    
    func getProgress() -> Float {
        let progress = Float(questionNumber) / Float(questions.count)
        return progress
    }
    
    mutating func nextQuestion() {
        
        if questionNumber + 1 < questions.count {
            questionNumber += 1

        } else {
            questionNumber = 0
            score = 0
            
        }
        
    }
    
}

