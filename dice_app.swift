
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var imageView2: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    imageView1.image = #imageLiteral(resourceName: "DiceTwo")
    imageView2.image = #imageLiteral(resourceName: "DiceSix")
        
    }

    @IBAction func rollbutton(_ sender: UIButton) {
        
    let diceArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
    
        imageView1.image = diceArray.randomElement()!
        imageView2.image = diceArray.randomElement()!
        
    }
    
}

