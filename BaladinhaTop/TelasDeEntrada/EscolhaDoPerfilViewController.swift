//
//  EscolhaDoPerfilViewController.swift
//  BaladinhaTop
//
//  Created by Francisca Rosa on 05/05/21.
//

import UIKit

class EscolhaDoPerfilViewController: UIViewController {

	@IBOutlet weak var anfitriaoPerfilButton: UIButton!
	
	@IBOutlet weak var baladeiroPerfilButton: UIButton!
	
	override func viewDidLoad() {
        super.viewDidLoad()

		anfitriaoPerfilButton.backgroundColor = UIColor (named: "roxinhoSucesso")
		anfitriaoPerfilButton.layer.cornerRadius = 24
		anfitriaoPerfilButton.setTitleColor(.white, for: .normal) // deu vontade de fazer por código pra aprender :)
		baladeiroPerfilButton.backgroundColor = UIColor (named: "roxinhoSucesso")
		baladeiroPerfilButton.layer.cornerRadius = 24
		baladeiroPerfilButton.setTitleColor(.white, for: .normal)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
