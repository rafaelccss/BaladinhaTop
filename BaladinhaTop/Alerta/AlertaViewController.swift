//
//  AlertaViewController.swift
//  BaladinhaTop
//
//  Created by Ercília Regina Silva Dantas on 08/05/21.
//

import UIKit

class AlertaViewController: UIViewController {

    
    @IBOutlet weak var titleAlert: UILabel!
    @IBOutlet weak var infoAlert: UILabel!
    @IBOutlet weak var actionButtonAlert: UIButton!
    
    var alertTitle = String()
    var alertInfo = String()
    var alertActionButtonTitle = String()
    
    var buttonInAction: (() -> Void)? // callback
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpAlertView()
    }
    
    func setUpAlertView() {
        titleAlert.text = alertTitle
        infoAlert.text = alertInfo
        actionButtonAlert.setTitle(alertActionButtonTitle, for: .normal)
    }
    
    @IBAction func didTapCancelButton(_ sender: Any) {
        dismiss(animated: true)
    }
    

    @IBAction func didTapActionButton(_ sender: Any) {
        dismiss(animated: true)
        buttonInAction?()
    }
    
}
