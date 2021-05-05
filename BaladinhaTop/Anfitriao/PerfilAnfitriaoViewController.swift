//
//  PerfilAnfitriaoViewController.swift
//  BaladinhaTop
//
//  Created by Rafael Custódio Silva on 04/05/21.
//

import UIKit

// proporção das cards do anfitrão 0,7696335079
// proporcao de um card frente a largura do device 0,355072463768116
// proporcao dos cards horizontais em relacao a largura do device 0,768115942028986

class PerfilAnfitriaoViewController: UIViewController {
    
    @IBOutlet weak var oferecerFesta: UIImageView!
    @IBOutlet weak var reputacao: UIImageView!
    @IBOutlet weak var minhasFestas: UIImageView!
    @IBOutlet weak var hojeVouFestar: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let tapGesture = UITapGestureRecognizer (target: self, action: #selector(PerfilAnfitriaoViewController.imageClick(_:)))
//        
//        hojeVouFestar.addGestureRecognizer(tapGesture)

        // Do any additional setup after loading the view.
    }
    
    @objc
    @IBAction func imageClick(_ sender:UITapGestureRecognizer){
        let myParty = sender.view
        
        if myParty == oferecerFesta {
            performSegue(withIdentifier: "transicaoReputacao", sender: sender)
        }
        
        if myParty == reputacao {
            print("Reputação")
        }
        
        
        if myParty == minhasFestas {
            print("Minhas festas")
        }
        if myParty == hojeVouFestar {
            print("Hoje vou festar")
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
