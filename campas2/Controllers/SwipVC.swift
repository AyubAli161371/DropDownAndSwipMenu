//
//  SwipVC.swift
//  campas2
//
//  Created by Ayub Ali on 25/02/2022.
//

import UIKit
import SwipeMenuViewController

class SwipVC: UIViewController {

    @IBOutlet weak var swipeCV: SwipeMenuView!
    //MARK:- VARIABLES
        private var name: [String ] = ["Detail", "Bookings"]
            var options = SwipeMenuViewOptions()
            var dataCount : Int = 2
            var ViewController: [UIViewController] = [UIViewController(),UIViewController()]
            let viewController : ViewController = UIStoryboard.controller()
            let tableVC: TableVC = UIStoryboard.controller()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

                options = .init()
                configureMenu()
                swipeCV.reloadData(options: options)
    }
}

// MARK: - EXTENSION OF SWIPEMENUVIEW
extension SwipVC{
 func configureMenu(){
     swipeCV.delegate = self
     swipeCV.dataSource = self
  ViewController.removeAll()
  ViewController = [viewController,tableVC]
  options.tabView.style = .segmented
  options.tabView.itemView.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
  options.tabView.itemView.selectedTextColor = #colorLiteral(red: 1, green: 0.2352941176, blue: 0.07843137255, alpha: 1)
  options.tabView.addition = .underline
  options.tabView.additionView.underline.height = 2
  options.tabView.additionView.backgroundColor = #colorLiteral(red: 1, green: 0.2352941176, blue: 0.07843137255, alpha: 1)
    //  options.tabView.itemView.selectedTextColor = UIColor.redInApp
}
}

// MARK: - SWIPE MENU DELEGATES AND DATATSOURCE EXTENSION


 extension SwipVC : SwipeMenuViewDataSource, SwipeMenuViewDelegate{
      func numberOfPages(in swipeMenuView: SwipeMenuView) -> Int {
       return ViewController.count
//     return artistDetailData?.services?.count ?? 0
       
   }
   
   func swipeMenuView(_ swipeMenuView: SwipeMenuView, titleForPageAt index: Int) -> String {
       return name[index]
   }
   func swipeMenuView(_ swipeMenuView: SwipeMenuView, viewControllerForPageAt index: Int) -> UIViewController {
       return ViewController[index]
}
}
