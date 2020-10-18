//
//  SettingsViewController.swift
//  Preparedness
//
//  Created by alextakahashi on 4/12/20.
//  Copyright © 2020 CCDC. All rights reserved.
//

import Foundation
import UIKit

class SettingsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
//    private var collectionView: UICollectionView
    
    init() {
//        let layout = UICollectionViewFlowLayout()
//        self.collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
//        self.collectionView.backgroundColor = UIColor.red
        super.init(nibName: nil, bundle: nil)
//        self.view.addSubview(collectionView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        setUpTableView()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
//        collectionView.frame = self.view.frame
    }
    
    private func setupNavigationBar() {
        let cancelButton: UIButton
        if #available(iOS 13.0, *) {
            cancelButton = UIButton(type: .close)
        } else {
            cancelButton = UIButton(type: .system)
        }
        cancelButton.addTarget(self, action: #selector(didDismiss), for: .touchUpInside)
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(customView: cancelButton)
    }
    
    @objc private func didDismiss() {
        self.dismiss(animated: true, completion: nil)
    }
    
    let tableview: UITableView = {
        let tv = UITableView()
        tv.backgroundColor = UIColor.white
        tv.translatesAutoresizingMaskIntoConstraints = false
        return tv
        }()
    
    func setUpTableView() {
        tableview.register(UITableViewCell.self, forCellReuseIdentifier: "cellId")
        tableview.register(ThirtyDayCell.self, forCellReuseIdentifier: "cellId")
        tableview.backgroundColor = .cyan
        view.addSubview(tableview)
        tableview.dataSource = self
            
        NSLayoutConstraint.activate([
            tableview.topAnchor.constraint(equalTo: self.view.topAnchor),
            tableview.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            tableview.rightAnchor.constraint(equalTo: self.view.rightAnchor),
            tableview.leftAnchor.constraint(equalTo: self.view.leftAnchor)
            ])
        }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // 1
        return 10
        }
        
    func tableView(_ tableView: UITableView, cellForRowAt indexpath: IndexPath) -> UITableViewCell {
        //2
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexpath) as! ThirtyDayCell
        cell.backgroundColor = UIColor.red
        return cell
    }
    }

class ThirtyDayCell: UITableViewCell {
        
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupView()
    
    }

    func setupView() {
        addSubview(cellView)
        cellView.addSubview(settingLabel)
        self.selectionStyle = .none
        
        NSLayoutConstraint.activate([
            cellView.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
            cellView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -10),
            cellView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10),
            cellView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
        
        settingLabel.heightAnchor.constraint(equalToConstant: 200).isActive = true
        settingLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
        settingLabel.centerYAnchor.constraint(equalTo: cellView.centerYAnchor).isActive = true
        settingLabel.leftAnchor.constraint(equalTo: cellView.leftAnchor, constant: 20).isActive = true
        
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
        
    func tableView(_tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

    let cellView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.red
        view.layer.cornerRadius = 10
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let settingLabel: UILabel = {
        let label = UILabel()
        label.text = "Preparedness"
        label.textColor = UIColor.white
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
}



