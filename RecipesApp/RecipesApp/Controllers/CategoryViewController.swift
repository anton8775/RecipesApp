
import UIKit

class CategoryViewController: UITabBarController {
    
    var categories = ["Sweet", "main"]
    let categoriesList = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        addSubviews()
        setConstraints()
        
        categoriesList.delegate = self
        categoriesList.dataSource = self
        categoriesList.register(CategoryTableViewCell.self, forCellReuseIdentifier: CategoryTableViewCell.idn)
        
        let homeVC = HomeViewController()
        let favoritesVC = FavoritesViewController()
        
        self.setViewControllers([homeVC, favoritesVC], animated: true)
    }
    
    private func addSubviews(){
        view.addSubview(categoriesList)
    }
    
    private func setConstraints(){
        categoriesList.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            categoriesList.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            categoriesList.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            categoriesList.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            categoriesList.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -60)
        ])
    }
}

extension CategoryViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CategoryTableViewCell.idn, for: indexPath) as? CategoryTableViewCell else {
            return UITableViewCell()
        }
        cell.label.text = categories[indexPath.row]
        
        return cell
    }
    
    
}
