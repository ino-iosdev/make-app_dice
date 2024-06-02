
import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var BGimage1: UIImageView!
    @IBOutlet weak var BGimage: UIImageView!
    @IBOutlet weak var storyLable: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        BGimage.isHidden = true
        BGimage1.isHidden = false
        updateUI()
        
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        
        BGimage.isHidden = true
        BGimage1.isHidden = false
        
        let userChoice = sender.attributedTitle(for: .normal)?.string ?? ""
        // old version code replaced by the line above to preserve attrituted text format:
        // old version code: storyBrain.nextStory(userChoice: sender.currentTitle!)

        storyBrain.nextStory(userChoice: userChoice)
        
        updateUI()
    }
    
    func updateUI() {
        
        storyLable.text = storyBrain.getStoryTitle()
        
        let choice1Text = NSAttributedString(string: storyBrain.getChoice1(), attributes: nil)
        choice1Button.setAttributedTitle(choice1Text, for: .normal)
        // old version code: choice1Button.setTitle(storyBrain.getChoice1(), for: .normal)
        
        let choice2Text = NSAttributedString(string: storyBrain.getChoice2(), attributes: nil)
        choice2Button.setAttributedTitle(choice2Text, for: .normal)
        // old version code: choice2Button.setTitle(storyBrain.getChoice2(), for: .normal)
        
        // old version code replaced by the code above them to preserve attrituted text format
    
        if storyBrain.storyNumber == 2 {
            BGimage.isHidden = false
            BGimage1.isHidden = true
        } else {
            BGimage.isHidden = true
            BGimage1.isHidden = false
        }
    }

}

