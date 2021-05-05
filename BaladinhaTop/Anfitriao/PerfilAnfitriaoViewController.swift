//
//  PerfilAnfitriaoViewController.swift
//  BaladinhaTop
//
//  Created by Rafael Custódio Silva on 04/05/21.
//

import UIKit

class PerfilAnfitriaoViewController: UIViewController {
    
    @IBOutlet weak var hojeVouFestar: UIImageView!
    @IBOutlet weak var minhasFestas: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGesture = UITapGestureRecognizer (target: self, action: #selector(PerfilAnfitriaoViewController.imageClick(_:)))
        
        hojeVouFestar.addGestureRecognizer(tapGesture)

        // Do any additional setup after loading the view.
    }
    
    @objc
    @IBAction func imageClick(_ sender:UITapGestureRecognizer){
        let myParty = sender.view
        if myParty == minhasFestas {
            print("minhas festas")
        }
        if myParty == hojeVouFestar {
            performSegue(withIdentifier: "transicaoReputacao", sender: sender)
        }
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
