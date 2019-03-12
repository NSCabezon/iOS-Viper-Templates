import XCTest

@testable import ___VARIABLE_targetName:identifier___

class ___VARIABLE_productName:identifier___PresenterTests: XCTestCase {
	var presenter: ___VARIABLE_productName:identifier___Presenter!
	var mockView: ___VARIABLE_productName:identifier___ViewControllerMock!
	var mockInteractor: ___VARIABLE_productName:identifier___InteractorMock!
	var mockRouter: ___VARIABLE_productName:identifier___RouterMock!
	
	override func setUp() {
		mockView = ___VARIABLE_productName:identifier___ViewControllerMock()
		mockInteractor = ___VARIABLE_productName:identifier___InteractorMock()
		mockRouter = ___VARIABLE_productName:identifier___RouterMock()
		presenter = ___VARIABLE_productName:identifier___Presenter(interface: mockView, interactor: mockInteractor, router: mockRouter)
	}

	override func tearDown() {
		// Put teardown code here. This method is called after the invocation of each test method in the class.
	}
}
