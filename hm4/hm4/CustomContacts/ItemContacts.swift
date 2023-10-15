import UIKit

class ItemContacts: UITableViewCell {
    private let containerView: UIView = {
        let containerView = UIView()
        containerView.translatesAutoresizingMaskIntoConstraints = false
        return containerView
    }()
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        self.layer.cornerRadius = 8
        self.clipsToBounds = true
        self.layer.borderWidth = 0.5
    }
    
    
    private let imageUI: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 32
        return imageView
    }()
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        return label
    }()
    
    private let vStack: UIStackView = {
        var stack = UIStackView()
        stack.axis = .vertical
        stack.distribution = .equalSpacing
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    func setUpCell(data: Item) {
        nameLabel.text = data.nameLabel
        imageUI.image = UIImage(named: data.avatarImageView)
    }
    
    static var reuseIdentifier: String {
        return String(describing: self)
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        commonInit()
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }

    private func commonInit() {
        contentView.backgroundColor = .white
        contentView.addSubview(containerView)
        containerView.addSubview(imageUI)
        containerView.addSubview(vStack)
        vStack.addArrangedSubview(nameLabel)
        
       
        
        NSLayoutConstraint.activate(staticConstraints())
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
    private func staticConstraints() -> [NSLayoutConstraint] {
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(contentsOf: [
            containerView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 5),
            containerView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 5),
            containerView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -5),
            containerView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -5)
        ])
        
        
        constraints.append(contentsOf: [
            imageUI.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 10),
            imageUI.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 10),
            imageUI.widthAnchor.constraint(equalToConstant: 50),
            imageUI.heightAnchor.constraint(equalToConstant: 50),
           
        ])
        
        constraints.append(contentsOf: [
            vStack.leadingAnchor.constraint(equalTo: imageUI.trailingAnchor, constant: 15),
            vStack.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 10),
            vStack.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: 0),
            vStack.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: 0),
        ])
        return constraints
    }
}
