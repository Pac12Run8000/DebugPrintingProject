//
//  ViewController.swift
//  LazyImageInTableView
//
//  Created by Michelle Grover on 11/18/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var titleLabel: UILabel!
    
    var restaurantList:[Restaurant] = [] {
        didSet {
            DispatchQueue.main.async {
                self.tableView.reloadData()
                
                
                
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        NetworkingService.shared.fetchData { list in
            self.restaurantList = list
        }
        /*
        var menu = Menu()
        var entre = Entre()
        menu.entre = entre
        entre.menu = menu
        */
        
//        do {
//            let b = B()
//            let a = A(propB: b)
//            b.propA = a
//        }
        
        
        
    }
    
    
    @IBAction func presentView(_ sender:UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "second")
        self.present(vc!, animated: true)
    }


}

extension ViewController:UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = restaurantList[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? CustomCell
//        print(item)
//        debugPrint(item)
        cell?.restaurant = item
        return cell!
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantList.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 125
    }
    
    
    
}

