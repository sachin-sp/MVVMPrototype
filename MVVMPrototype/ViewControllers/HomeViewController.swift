//
//  HomeViewController.swift
//  MVVMPrototype
//
//  Created by Sachin Pampannavar on 06/10/22.
//

import UIKit
class HomeViewController: BaseViewController {
    
    private var homeView: HomeView? {
        return view(of: HomeView.self)
    }
    private var homeViewModel: HomeViewModel? {
        return viewModel(of: HomeViewModel.self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let a = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(doneAction))
        navigationItem.rightBarButtonItem = a
        let b = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(cancelAction))
        //navigationItem.leftBarButtonItem = b
        congfigureViewAndViewModel(view: HomeView(frame: self.view.bounds), viewModel: HomeViewModel())
    }
    @objc func doneAction() {
        homeViewModel?.didSelectItem()
        self.navigationController?.pushViewController(HomeViewController(), animated: true)
        
    }
    @objc func cancelAction() {
        homeViewModel?.didSelectItemOne()
    }
    deinit {
        print("HomeViewController No Retain Cycle")
    }
}

extension HomeViewController: HomeViewControllerDelegate {
    func vcDidSelectItem() {
        print("vcDidSelectItem")
    }
}

