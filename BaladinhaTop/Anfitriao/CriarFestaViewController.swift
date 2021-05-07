//
//  VouFestarViewController.swift
//  BaladinhaTop
//
//  Created by Rafael Custódio Silva on 05/05/21.
//

import UIKit

class CriarFestaViewController: UIViewController {
    
//    var nomeDaFesta: String?
//    @IBOutlet weak var parNomeDaFesta: UITextField!
    
    @IBOutlet weak var nomeDaFesta: UITextField!
    @IBOutlet weak var descricaoDaFesta: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        parNomeDaFesta.text = nomeDaFesta
//    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "teste" {
        if let destination = segue.destination as? PerfilDaFestaViewController {
            destination.tituloDaFesta = nomeDaFesta.text
            destination.descricaoDaFesta = descricaoDaFesta.text
//            }
        }
        
    }
}
