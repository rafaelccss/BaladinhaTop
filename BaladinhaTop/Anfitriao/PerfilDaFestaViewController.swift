//
//  PerfilDaFestaViewController.swift
//  BaladinhaTop
//
//  Created by Rafael Custódio Silva on 06/05/21.
//

import UIKit

class PerfilDaFestaViewController: UIViewController {

    var tituloDaFesta: String?
    var descricaoDaFesta: String?
    
    @IBOutlet weak var barraPerfilDaFesta: UINavigationItem!
    
    @IBOutlet weak var displayingDescricaoDaFesta: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        barraPerfilDaFesta.title = tituloDaFesta
        displayingDescricaoDaFesta.text = descricaoDaFesta
    }
    
    
}
