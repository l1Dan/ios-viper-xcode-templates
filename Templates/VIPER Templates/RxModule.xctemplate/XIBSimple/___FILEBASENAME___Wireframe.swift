//___FILEHEADER___
//  This file was generated by the 🐍 VIPER generator
//

import UIKit
import RxSwift
import RxCocoa

final class ___VARIABLE_moduleName___Wireframe: BaseWireframe<___VARIABLE_moduleName___ViewController> {

    // MARK: - Module setup -

    init() {
        let moduleViewController = ___VARIABLE_moduleName___ViewController()
        super.init(viewController: moduleViewController)

        let presenter = ___VARIABLE_moduleName___Presenter(view: moduleViewController, wireframe: self)
        moduleViewController.presenter = presenter
    }

}

// MARK: - Extensions -

extension ___VARIABLE_moduleName___Wireframe: ___VARIABLE_moduleName___WireframeInterface {
}
