//
//  SecondViewController.swift
//  LazyImageInTableView
//
//  Created by Norbert Grover on 11/28/22.
//

import UIKit

//class LeakView:UIView {
//    let vc:UIViewController
//    init(vc: UIViewController) {
//        self.vc = vc
//        super.init(frame: .zero)
//    }
//    
//    required init?(coder:NSCoder) {
//        fatalError()
//    }
//}

class SecondViewController: UIViewController {
    
//    var lView:LeakView?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.green
//        lView = LeakView(vc: self)
    }
    
    
    
    @IBAction func btnDismiss( _ sender:UIButton) {
        self.dismiss(animated: true)
    }

    

}
