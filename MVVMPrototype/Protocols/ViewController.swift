//
//  ViewController.swift
//  MVVMPrototype
//
//  Created by Sachin Pampannavar on 10/10/22.
//

import UIKit

protocol ViewController: UIViewController {
    var baseView: View? { get set }
    var baseViewModel: ViewModel? { get set }
    
    func view<View>(of type: View.Type) -> View?
    func viewModel<ViewModel>(of type: ViewModel.Type) -> ViewModel?
    func congfigureViewAndViewModel(view: View, viewModel: ViewModel)
}
extension ViewController {
    
    func view<View>(of type: View.Type) -> View? {
        return self.baseView as? View
    }
    func viewModel<ViewModel>(of type: ViewModel.Type) -> ViewModel? {
        return self.baseViewModel as? ViewModel
    }
    
}
