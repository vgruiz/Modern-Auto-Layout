import UIKit

class TileView: UIView {

    //let greenView = UIView.makeView(color: .green)
    let blueView = UIView.makeView(color: .blue)
    let redView = UIView.makeView(color: .red)
    
    let padding: CGFloat = 25.0
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    private func setupView() {
        backgroundColor = .green
        addSubview(blueView)
        addSubview(redView)
        
        NSLayoutConstraint.activate([
            //hoorizontal
            blueView.widthAnchor.constraint(equalTo: redView.widthAnchor),
            blueView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding),
            redView.leadingAnchor.constraint(equalTo: blueView.trailingAnchor, constant: padding),
            trailingAnchor.constraint(equalTo: redView.trailingAnchor, constant: padding),
            
            //vertical
            blueView.topAnchor.constraint(equalTo: topAnchor, constant: padding),
            redView.topAnchor.constraint(equalTo: topAnchor, constant: padding),
            bottomAnchor.constraint(equalTo: blueView.bottomAnchor, constant: padding),
            bottomAnchor.constraint(equalTo: redView.bottomAnchor, constant: padding)
        ])
        
    }

}

extension UIView {
    static func makeView(color: UIColor) -> UIView {
        let view = UIView()
        view.backgroundColor = color
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }
}
