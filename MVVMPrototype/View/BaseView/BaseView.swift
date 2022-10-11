//
//  BaseView.swift
//  MVVMPrototype
//
//  Created by Sachin Pampannavar on 06/10/22.
//

import UIKit

class BaseView: UIView, View {
    weak var viewModel: ViewModel?
    weak var viewController: ViewController?
}
extension BaseView: ViewLifeCycle {
    @objc func viewDidLoad() { }
    @objc func viewWillAppear() { }
    @objc func viewDidAppear() { }
    @objc func viewWillDisappear() { }
    @objc func viewDidDisappear() { }
}
