//
//  ExplicacaoViewController.swift
//  BaladinhaTop
//
//  Created by Francisca Rosa on 05/05/21.
//

import UIKit

class ExplicacaoViewController: UIViewController {

    @IBOutlet weak var explicacaoLabel: UILabel!
    @IBOutlet weak var barraDeProgresso: UIProgressView!
    @IBOutlet weak var cardView: UIView!
    
    var paginaQueEstamos = 1
    
    @IBAction func proximoButton(_ sender: Any) { //criar image view, trazer pra classe, mudar imagem
        //fazer autolayout com a mesma lógica do botão, trazer 
        paginaQueEstamos += 1
        barraDeProgresso.progress = Float(paginaQueEstamos) / 3
        switch paginaQueEstamos {
        case 2:
            explicacaoLabel.text = "Busque por nome, tipo de festa,  estilo de música ou por localidade"
        case 3:
            explicacaoLabel.text = "Você pode encontrar pessoas para ir com você e traçar a rota perfeita para sua noite"
        case 4:
            performSegue(withIdentifier: "toEscolha", sender: nil)
        default:            
            print ("oops! q?")
        }
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        cardView.layer.cornerRadius = 18
     
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
