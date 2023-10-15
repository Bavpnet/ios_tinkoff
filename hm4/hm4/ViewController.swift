import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return the number of rows in the table, which should be based on your data
        return data.count
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           let cell = tableView.dequeueReusableCell(withIdentifier: "ItemContacts", for: indexPath) as! ItemContacts
           
        cell.setUpCell(data: data[indexPath.row])
           return cell
       }

    

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
           
           let detailsViewController = ContactDetailViewController()
        detailsViewController.contactName = data[indexPath.row].nameLabel
        detailsViewController.contactImage = UIImage(named: data[indexPath.row].avatarImageView)
           present(detailsViewController, animated: true)
       }
    

    
    
    
    private var data: [Item] = [
        Item(id: 1, nameLabel: "Микаса Аккерман",  avatarImageView: "avatar1"),
        Item(id: 2, nameLabel: "Саша Браус",  avatarImageView: "avatar2"),
        Item(id: 3, nameLabel: "Зик Йегер",  avatarImageView: "avatar3"),
        Item(id: 4, nameLabel: "Эрен Йегер",  avatarImageView: "avatar4"),
        Item(id: 5, nameLabel: "Леви Аккерман",  avatarImageView: "avatar5"),
        Item(id: 6, nameLabel: "Хистория Рейсс",  avatarImageView: "avatar6"),
    ]
    
    private let tableOfContent: UITableView = {
        let tableOfContent = UITableView()
        tableOfContent.translatesAutoresizingMaskIntoConstraints = false
        tableOfContent.backgroundColor = .systemGray
        tableOfContent.register(ItemContacts.self,
                                forCellReuseIdentifier: ItemContacts.reuseIdentifier)

        tableOfContent.separatorColor = .clear
        return tableOfContent
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableOfContent.delegate = self
        tableOfContent.dataSource = self
        view.backgroundColor = .black
        
        view.addSubview(tableOfContent)
        
        NSLayoutConstraint.activate(staticConstraints())
    }
    
    private func staticConstraints() -> [NSLayoutConstraint] {
           var constraints = [NSLayoutConstraint]()
           
           constraints.append(contentsOf: [
               tableOfContent.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
               tableOfContent.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
               tableOfContent.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
               tableOfContent.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
           ])
           
           return constraints
       }
    
    @objc func cellTapped(sender: UITapGestureRecognizer) {
        if let cell = sender.view as? ItemContacts, let indexPath = tableOfContent.indexPath(for: cell) {
            let index = indexPath.row / 2
            let contact = data[index]

            let detailVC = ContactDetailViewController()
            detailVC.contactName = contact.nameLabel
            detailVC.contactImage = UIImage(named: contact.avatarImageView)

            navigationController?.pushViewController(detailVC, animated: true)
        }
    }
}


