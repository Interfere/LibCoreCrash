//
//  ViewController.swift
//  TestLibCoreCrash
//
//  Created by TemporaryAdmin on 15.04.21.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let label = UILabel()
    label.text = "Default Text"
    label.sizeToFit()
    view.addSubview(label)
    label.center = view.center
  }
}

