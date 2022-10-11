//
//  ViewLifeCycle.swift
//  MVVMPrototype
//
//  Created by Sachin Pampannavar on 10/10/22.
//

import UIKit

protocol ViewLifeCycle: UIView {
    func viewDidLoad()
    func viewWillAppear()
    func viewDidAppear()
    func viewWillDisappear()
    func viewDidDisappear()
}
