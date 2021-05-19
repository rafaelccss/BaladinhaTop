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
    @IBOutlet weak var explicacaoImage: UIImageView!
    @IBOutlet weak var voltarExplicacao: UIButton!
		
    
    
    
    var paginaQueEstamos = 1
    
    @IBAction func voltarButton(_ sender: Any) {
		if paginaQueEstamos > 1 {
			paginaQueEstamos = paginaQueEstamos - 1
		} else if paginaQueEstamos > 3 {
			paginaQueEstamos = 1
		}
		
		oQueExiboNoLabel()
    }
   
    func oQueExiboNoLabel () {
		barraDeProgresso.progress = Float(paginaQueEstamos) / 3
		
        switch paginaQueEstamos {
        
        case 1:
            explicacaoLabel.text = "B.Fest é uma proposta para você encontrar a diversão que busca  e que melhor combina com você"
            explicacaoImage.image = UIImage (named: "seniorImage")
			voltarExplicacao.isEnabled = false
			
        case 2:
            explicacaoLabel.text = "Busque por nome, tipo de festa,  estilo de música ou por localidade"
            explicacaoImage.image = UIImage (named: "seniorLadyImage")
			voltarExplicacao.isEnabled = true
        case 3:
            explicacaoLabel.text = "Você pode encontrar pessoas para ir com você e traçar a rota perfeita para sua noite"
            explicacaoImage.image = UIImage (named: "seniorsJuntosImage")
                   
        default:
			paginaQueEstamos = 3
			performSegue(withIdentifier: "toEscolha", sender: nil)
        }
    }
    
    @IBAction func proximoButton(_ sender: Any) {
        paginaQueEstamos += 1
       
        
        oQueExiboNoLabel()
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        cardView.layer.cornerRadius = 18
		voltarExplicacao.isEnabled = false
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
