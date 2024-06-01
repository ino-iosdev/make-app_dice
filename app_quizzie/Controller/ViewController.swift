
import UIKit
import AVFoundation
    
class ViewController: UIViewController {
    
    var player: AVAudioPlayer!
    
    func playSound(named soundName: String) {
           guard let url = Bundle.main.url(forResource: soundName, withExtension: "mp3") else {
               print("Could not find sound file: \(soundName)")
               return
           }
           
           do {
               player = try AVAudioPlayer(contentsOf: url)
               player.play()
           } catch {
               print("Error playing sound: \(error.localizedDescription)")
           }
       }
    
    @IBOutlet weak var questionProgress: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionText: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        questionProgress.text = "1/9"
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        let userGotItRight = quizBrain.checkAnswer(userAnswer: userAnswer)
        
        if userGotItRight {
            sender.backgroundColor = UIColor.green.withAlphaComponent(0.6)
            print("green")
            playSound(named: "answerCorrectSound")
        } else {
            sender.backgroundColor = UIColor.red.withAlphaComponent(0.6)
            print("red")
            playSound(named: "answerWrongSound")
        }
        
        questionProgressUpdate()
        
        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
    }
    @objc func updateUI() {
        
        questionText.text = quizBrain.getQuestionText()
        progressBar.progress = quizBrain.getProgress()
        scoreLabel.text = "Score: \(quizBrain.getScore())"
        trueButton.backgroundColor = UIColor.systemYellow
        falseButton.backgroundColor = UIColor.systemYellow
        
    }
    
    var currentQuestionIndex = 0
    
    func questionProgressUpdate() {
        if currentQuestionIndex < 8 {
            currentQuestionIndex += 1
        } else {
            currentQuestionIndex = 0
        }
        questionProgress.text = "\(currentQuestionIndex + 1)/9"
    }

}

