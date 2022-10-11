//
//  ViewModel.swift
//  MVVMPrototype
//
//  Created by Sachin Pampannavar on 10/10/22.
//

import Foundation

protocol ViewModel: AnyObject {
    var view: View? { get set }
    var viewController: ViewController? { get set }
    
    func view<View>(of type: View.Type) -> View?
    func viewController<ViewController>(of type: ViewController.Type) -> ViewController?
}
extension ViewModel {
    func view<View>(of type: View.Type) -> View? {
        return self.view as? View
    }
    func viewController<ViewController>(of type: ViewController.Type) -> ViewController? {
        return self.viewController as? ViewController
    }
}
