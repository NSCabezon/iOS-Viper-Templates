import XCTest

@testable import ___VARIABLE_targetName:identifier___

class ___VARIABLE_productName:identifier___PresenterTests: XCTestCase {
	var presenter: ___VARIABLE_productName:identifier___Presenter!
	var viewMock: ___VARIABLE_productName:identifier___ViewControllerMock!
	var interactorMock: ___VARIABLE_productName:identifier___InteractorMock!
	var routerMock: ___VARIABLE_productName:identifier___RouterMock!
	
	override func setUp() {
		viewMock = ___VARIABLE_productName:identifier___ViewControllerMock()
		interactorMock = ___VARIABLE_productName:identifier___InteractorMock()
		routerMock = ___VARIABLE_productName:identifier___RouterMock()
		presenter = ___VARIABLE_productName:identifier___Presenter(interface: viewMock, interactor: interactorMock, router: routerMock)
	}
	
	override func tearDown() {
		// Put teardown code here. This method is called after the invocation of each test method in the class.
	}
}
