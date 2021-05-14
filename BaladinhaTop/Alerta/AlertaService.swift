//
//  AlertaService.swift
//  BaladinhaTop
//
//  Created by Ercília Regina Silva Dantas on 08/05/21.
//

import UIKit

class AlertaService {

    func alert(alertTitle: String, alertInfo: String, alertActionButtonTitle: String, completion: @escaping () -> Void ) -> AlertaViewController {
        let storyboard = UIStoryboard(name: "AlertaScreen", bundle: .main)
        
        let alertaScreen = storyboard.instantiateViewController(withIdentifier: "AlertaScreen") as! AlertaViewController
        
        alertaScreen.alertTitle = alertTitle
        alertaScreen.alertInfo = alertInfo
        alertaScreen.alertActionButtonTitle = alertActionButtonTitle
        alertaScreen.buttonInAction = completion
        
        return alertaScreen
    }

}
