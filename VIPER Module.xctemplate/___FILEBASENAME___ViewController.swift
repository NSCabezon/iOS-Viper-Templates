import UIKit

// MARK: - View

protocol ___VARIABLE_productName:identifier___ViewProtocol: class {
    var presenter: ___VARIABLE_productName:identifier___PresenterProtocol? { get set }
}

class ___VARIABLE_productName:identifier___ViewController: UIViewController, ___VARIABLE_productName:identifier___ViewProtocol {

	var presenter: ___VARIABLE_productName:identifier___PresenterProtocol?

	override func viewDidLoad() {
        super.viewDidLoad()
		
    }
	
	class func initFromStoryboard() -> ___VARIABLE_productName:identifier___ViewController {
		if let viewController = UIStoryboard(name: "___VARIABLE_productName:identifier___", bundle: nil).instantiateViewController(withIdentifier: "___VARIABLE_productName:identifier___ViewController") as? ___VARIABLE_productName:identifier___ViewController {
			return viewController
		}
		assert(false)
		return ___VARIABLE_productName:identifier___ViewController()
	}
}
