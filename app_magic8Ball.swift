import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer! // Declare the player variable
    
    override func viewDidLoad() { // Add the function call within viewDidLoad()
            super.viewDidLoad()
            playSound(soundName: "magicWand")
        }
        
        func playSound(soundName: String) {
            guard let url = Bundle.main.url(forResource: soundName, withExtension: "mp3") else {
                print("Sound file not found")
                return
            }
            
            do { // Use do-catch for error handling
                player = try AVAudioPlayer(contentsOf: url)
                player.play()
            } catch {
                print("Error loading sound file: \(error.localizedDescription)")
            }
        }
    
    @IBOutlet weak var ballAnswer: UIImageView!
    

    
    @IBAction func askButton(_ sender: UIButton) {
        
        playSound(soundName: "magicWand")
        sender.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {sender.alpha = 0.7
        }
        
        let ballArray = [#imageLiteral(resourceName: "ballOne.png"),#imageLiteral(resourceName: "ballTwo.png"),#imageLiteral(resourceName: "ballThree.png"),#imageLiteral(resourceName: "ballFour.png"),#imageLiteral(resourceName: "ballFive.png")]
        ballAnswer.image = ballArray.randomElement()!
        
    }
}


//var player: AVAudioPlayer!
//func playSound(soundName: String) {
    //let url = Bundle.main.url(forResource: "magicWand", withExtension: "mp3")
    //player = try! AVAudioPlayer(contentsOf: url!)
    //player.play()
//}

//playSound(soundName: "magicWand")
