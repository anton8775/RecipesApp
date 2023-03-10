
import UIKit

class WelcomeViewController: UIViewController {
    
    let welcomeLabel: UILabel = {
        let label = UILabel()
        label.text = "Welcome"
        label.font = .systemFont(ofSize: 34, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    let subWelcomeLabel: UILabel = {
        let label = UILabel()
        label.text = "Let's get you settled in and ready to crush your goals"
        label.textAlignment = .center
        label.textColor = .systemGray
        label.font = .systemFont(ofSize: 16, weight: .regular)
        label.numberOfLines = 2
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    let getStartedButton: UIButton = {
        let button = UIButton()
        button.setTitle("Get Started", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 8
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        assignbackground()
        addSubviews()
        setConstraints()
        
        getStartedButton.addTarget(self, action: #selector(getStartedButtonTapped), for: .touchUpInside)
    }

    private func addSubviews(){
        view.addSubview(welcomeLabel)
        view.addSubview(subWelcomeLabel)
        view.addSubview(getStartedButton)
    }
    
    private func setConstraints(){
        NSLayoutConstraint.activate([
            welcomeLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 500),
            welcomeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            subWelcomeLabel.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 20),
            subWelcomeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            subWelcomeLabel.widthAnchor.constraint(equalToConstant: 280),
            
            getStartedButton.topAnchor.constraint(equalTo: subWelcomeLabel.bottomAnchor, constant: 120),
            getStartedButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            getStartedButton.widthAnchor.constraint(equalToConstant: 340),
            getStartedButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    private func assignbackground(){
        let background = UIImage(named: "WelcomeVCBackground")
        
        var imageView : UIImageView!
        imageView = UIImageView(frame: view.bounds)
        imageView.contentMode =  UIView.ContentMode.scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = background
        imageView.center = view.center
        view.addSubview(imageView)
        self.view.sendSubviewToBack(imageView)
    }
    
    @objc func getStartedButtonTapped(){
        let categoryVC = CategoryViewController()
        categoryVC.modalPresentationStyle = .fullScreen
        present(categoryVC, animated: true)
    }
}

