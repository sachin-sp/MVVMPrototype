//
//  View.swift
//  MVVMPrototype
//
//  Created by Sachin Pampannavar on 10/10/22.
//

import UIKit

protocol View: UIView {
    var viewModel: ViewModel? { get set }
    var viewController: ViewController? { get set }
    
    func viewModel<ViewModel>(of type: ViewModel.Type) -> ViewModel?
    func viewController<ViewController>(of type: ViewController.Type) -> ViewController?
}
extension View {
    func viewModel<ViewModel>(of type: ViewModel.Type) -> ViewModel? {
        return self.viewModel as? ViewModel
    }
    func viewController<ViewController>(of type: ViewController.Type) -> ViewController? {
        return self.viewController as? ViewController
    }
}
