import Foundation

class ___VARIABLE_productName:identifier___Configurator {
	static func configure() -> ___VARIABLE_productName:identifier___ViewController {
		let view = ___VARIABLE_productName:identifier___ViewController.initFromStoryboard()
		let presenter = ___VARIABLE_productName:identifier___Presenter(interface: view)
		view.presenter = presenter
		return view
	}
}
