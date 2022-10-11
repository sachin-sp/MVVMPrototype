//
//  HomeView.swift
//  MVVMPrototype
//
//  Created by Sachin Pampannavar on 06/10/22.
//

import Foundation
import UIKit

protocol HomeViewDelegate: ViewModel {
    func vdidSelectItem()
}
protocol HomeViewDelegateOne: ViewModel {
    func vdidSelectItemOne()
}
protocol HomeViewControllerDelegate: ViewController {
    func vcDidSelectItem()
}

class HomeView: BaseView {
    let tableView = UITableView(frame: .zero, style: .grouped)
    private var homeViewModel: HomeViewModel? {
        return viewModel(of: HomeViewModel.self)
    }
    private var homeViewController: HomeViewController? {
        return viewController(of: HomeViewController.self)
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(tableView)
        tableView.frame = frame
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        addSubview(tableView)
    }
    
    deinit {
        print("HomeView No Retain Cycle")
    }
}
extension HomeView {
    override func viewDidLoad() {
    }
}

extension HomeView: HomeViewModelDelegate {
    func vmdidSelectItem() {
        print("From ViewModel To View")
    }
}
extension HomeView: HomeViewModelDelegateOne {
    func vmdidSelectItemOne() {
        print("From ViewModel To View One")
    }
}
extension HomeView: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "CELL")
        return cell
    }
}
extension HomeView: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row % 2 == 0 {
                homeViewModel?.vdidSelectItem()
                homeViewController?.vcDidSelectItem()
        } else {
                homeViewModel?.vdidSelectItemOne()
        }
    }
}
