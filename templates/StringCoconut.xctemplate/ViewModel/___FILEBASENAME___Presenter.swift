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

import UIKit

class ___VARIABLE_sceneName___Presenter: BasePresenter {
	weak var baseViewController: BaseViewController!
	
    var viewController: ___VARIABLE_sceneName___ViewController! {
        return (baseViewController as! ___VARIABLE_sceneName___ViewController)
    }

    required init() {}
}
