
import UIKit

class WelcomeViewController: UIViewController {
    
    let welcomeLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    let subWelcomeLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    let getStartedButton: UIButton = {
        let button = UIButton()
        return button
    }()
    let logInButton: UIButton = {
        let button = UIButton()
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "WelcomeVCBackground")!)
    }

    private func addSubviews(){
        
    }
    
    private func setConstraints(){
        
    }
}

