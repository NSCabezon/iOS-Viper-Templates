//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import UIKit

// MARK: - View

protocol ___VARIABLE_productName:identifier___ViewProtocol: class {
    
    var presenter: ___VARIABLE_productName:identifier___PresenterProtocol?  { get set }
}

class ___VARIABLE_productName:identifier___ViewController: UIViewController, ___VARIABLE_productName:identifier___ViewProtocol {

	@IBOutlet weak var tableView: UITableView!
	var presenter: ___VARIABLE_productName:identifier___PresenterProtocol?

	override func viewDidLoad() {
        super.viewDidLoad()
		
	}
	
	func configureUI() {
		tableView.delegate = self
		tableView.dataSource = self
		tableView.registerNib(<#cellName#>)
    }
    
    class func initFromStoryboard() -> ___VARIABLE_productName:identifier___ViewController {
		if let viewController = UIStoryboard(name: "___VARIABLE_productName:identifier___", bundle: nil).instantiateViewController(withIdentifier: "___VARIABLE_productName:identifier___ViewController") as? ___VARIABLE_productName:identifier___ViewController {
			return viewController
		}
		assert(false)
		return ___VARIABLE_productName:identifier___ViewController()
    }
}


extension ___VARIABLE_productName:identifier___ViewController: UITableViewDelegate, UITableViewDataSource {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return <#numberOfRows#>
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		if let cell = tableView.dequeueReusableCell(cellType: <#cellName#>) {
			
			return cell
		}
		assert(false)
		return UITableViewCell()
	}
	
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		tableView.deselectRow(at: indexPath, animated: true)
		
	}
}