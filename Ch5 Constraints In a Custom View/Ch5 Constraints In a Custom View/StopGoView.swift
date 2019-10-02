
import UIKit

class StopGoView: UIView {

    private let redView = UIView.makeView(color: .red)
    private let greenView = UIView.makeView(color: .green)
    
    private let padding: CGFloat = 50.0
    private let spacing: CGFloat = 25.0
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    private func setupView() {
        addSubview(redView)
        addSubview(greenView)
        
        NSLayoutConstraint.activate([
            redView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding),
            greenView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding),
            
            trailingAnchor.constraint(equalTo: redView.trailingAnchor, constant: padding),
            trailingAnchor.constraint(equalTo: greenView.trailingAnchor, constant: padding),
            
            redView.topAnchor.constraint(equalTo: topAnchor, constant: padding),
            greenView.topAnchor.constraint(equalTo: greenView.bottomAnchor, constant: spacing),
            bottomAnchor.constraint(equalTo: greenView.bottomAnchor, constant: padding),
            
            redView.heightAnchor.constraint(equalTo: greenView.heightAnchor)
        ])
    }
    
}

private extension UIView {
    static func makeView(color: UIColor) -> UIView {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = color
        return view
    }
}
