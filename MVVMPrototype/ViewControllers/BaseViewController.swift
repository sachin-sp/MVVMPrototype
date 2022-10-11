//
//  BaseViewController.swift
//  MVVMPrototype
//
//  Created by Sachin Pampannavar on 10/10/22.
//

import UIKit

class BaseViewController: UIViewController, ViewController {
    var baseView: View?
    var baseViewModel: ViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        congfigureViewAndViewModel(view: BaseView(frame: self.view.bounds), viewModel: BaseViewModel())
    }
    
    func congfigureViewAndViewModel(view: View, viewModel: ViewModel) {
        self.baseView = view
        self.baseViewModel = viewModel
        self.baseView?.viewModel = self.baseViewModel
        self.baseView?.viewController = self
        self.baseViewModel?.view = self.baseView
        self.baseViewModel?.viewController = self
        self.view = baseView
        (self.baseView as? BaseView)?.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        (self.baseView as? BaseView)?.viewWillAppear()
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        (self.baseView as? BaseView)?.viewDidAppear()
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        (self.baseView as? BaseView)?.viewWillDisappear()
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        (self.baseView as? BaseView)?.viewDidDisappear()
    }
}
