import Foundation

// MARK: - Wireframe

protocol ___VARIABLE_productName:identifier___WireframeProtocol: class {
	
}

class ___VARIABLE_productName:identifier___Router: ___VARIABLE_productName:identifier___WireframeProtocol {
	
	weak var viewController: ___VARIABLE_productName:identifier___ViewController?
	
	static func createModule() -> ___VARIABLE_productName:identifier___ViewController {
		// Change to get view from storyboard if not using progammatic UI
		let view = ___VARIABLE_productName:identifier___ViewController.initFromStoryboard()
		let interactor = ___VARIABLE_productName:identifier___Interactor()
		let router = ___VARIABLE_productName:identifier___Router()
		let presenter = ___VARIABLE_productName:identifier___Presenter(interface: view, interactor: interactor, router: router)
		
		view.presenter = presenter
		interactor.presenter = presenter
		router.viewController = view
		
		return view
	}
}
