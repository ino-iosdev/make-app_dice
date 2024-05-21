

import UIKit

class ViewController: UIViewController {
 
    @IBOutlet weak var ballAnswer: UIImageView!

    @IBAction func askButton(_ sender: UIButton) {
        
        let ballArray = [#imageLiteral(resourceName: "ballOne.png"),#imageLiteral(resourceName: "ballTwo.png"),#imageLiteral(resourceName: "ballThree.png"),#imageLiteral(resourceName: "ballFour.png"),#imageLiteral(resourceName: "ballFive.png")]
        
        ballAnswer.image = ballArray.randomElement()!

    }
}



