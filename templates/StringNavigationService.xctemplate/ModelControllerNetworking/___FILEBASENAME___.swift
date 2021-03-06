//
//  ___FILENAME___
//  ___PACKAGENAME___
//
//  Created by: ___FULLUSERNAME___ on ___DATE___
// 
//  Copyright © ___YEAR___ String Applied Technologies Limited. 
//  This file and its contents are proprietary to String Applied Technologies Limited 
//  and are strictly confidential. Any unauthorised distribution or use may result in 
//  legal action, including criminal sanctions.
//

import Foundation
import UIKit
import CoconutBits

protocol CoconutFactory {
    func instantiate<T: BaseViewController, V: BaseModelController, P: BasePresenter>(ModelControllerType: V.Type, PresenterType: P.Type, navigationService: NavigationService) -> T
}

extension UIStoryboard: CoconutFactory {
    
    func instantiate<T: BaseViewController, V: BaseModelController, P: BasePresenter>(ModelControllerType: V.Type, PresenterType: P.Type, navigationService: NavigationService) -> T {
        
        var modelController = ModelControllerType.init()
        modelController.navigationService = navigationService
        modelController.networking = navigationService.networking
        
        var presenter = PresenterType.init()
        let viewController: T = instantiateViewController()
        viewController.baseModelController = modelController
        viewController.basePresenter = presenter
        presenter.baseViewController = viewController
        
        return viewController
    }
    
}

class ___VARIABLE_sceneName___ {
    
    //    EXAMPLE INIT
    
    //    func initWithWelcomeScreen(window: UIWindow) {
    //        let viewController: WelcomeViewController = UIStoryboard.onboarding.instantiate(ModelControllerType: WelcomeModelController.self, PresenterType: WelcomePresenter.self, navigationService: self)
    //
    //        let navController = RootNavigationController(rootViewController: viewController)
    //
    //        window.rootViewController = navController
    //        rootNavigationController = navController
    //    }
    
    //    EXAMPLE SCREEN
    
    //    func emailSentScreen(email: String?) -> EmailSentViewController {
    //      let viewController: EmailSentViewController =           UIStoryboard.forgotPass.instantiate(ModelControllerType: EmailSentModelController.self, PresenterType: EmailSentPresenter.self, navigationService: self)
    //      viewController.modelController.emailRelay.accept(email)
    //
    //      return viewController
    //  }
    
}
