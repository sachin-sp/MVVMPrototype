//
//  HomeViewModel.swift
//  MVVMPrototype
//
//  Created by Sachin Pampannavar on 06/10/22.
//

import Foundation

protocol HomeViewModelDelegate: View {
    func vmdidSelectItem()
}
protocol HomeViewModelDelegateOne: View {
    func vmdidSelectItemOne()
}
class HomeViewModel: BaseViewModel {
    
    private var homeView: HomeView? {
        return view(of: HomeView.self)
    }
    private var homeViewController: HomeViewController? {
        return viewController(of: HomeViewController.self)
    }
    
    func didSelectItem() {
        homeView?.vmdidSelectItem()
    }
    
    func didSelectItemOne() {
        homeView?.vmdidSelectItemOne()
    }
    
    deinit {
        print("HomeViewModel No Retain Cycle")
    }
}
extension HomeViewModel: HomeViewDelegate {
    func vdidSelectItem() {
        print("From View To ViewModel")
    }
}
extension HomeViewModel: HomeViewDelegateOne {
    func vdidSelectItemOne() {
        print("From View To ViewModel One")
    }
}
