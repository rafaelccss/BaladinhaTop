//
//  TesteListaViewController.swift
//  BaladinhaTop
//
//  Created by Ercília Regina Silva Dantas on 08/05/21.
//

import UIKit

class FestaListaViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate {

    @IBOutlet weak var table: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    var partyArray = [Party]() // setup table
    var currentPartyArray = [Party]() // update table
    
//    let alertaService = AlertaService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpParties()
        setUpSearchBar()
    }
    
    func setUpSearchBar() {
        searchBar.delegate = self
    }
    func setUpParties() {
        partyArray.append(Party(imageView: "festa01", titleParty: "Piscininha, Amô!", hostName: "Rafael Baladeiro", eventDate: "09/07", tagOne: "#openBar", tagTwo: "#sambaRock", tagThree: "#todxs"))
        
        partyArray.append(Party(imageView: "festa02", titleParty: "É rave, poh!", hostName: "Fullhouse Club", eventDate: "09/07", tagOne: "#eletro", tagTwo: "#djTikTok", tagThree: "#baladaTop"))
        
        partyArray.append(Party(imageView: "festa03", titleParty: "Bar do Zé", hostName: "Jóse de Oliveira", eventDate: "09/07", tagOne: "#breja", tagTwo: "#sertanejo", tagThree: "#lgbtFriendly"))
        
        partyArray.append(Party(imageView: "festa04", titleParty: "Chicas Bar", hostName: "Chica do Barzin", eventDate: "09/07", tagOne: "#breja", tagTwo: "#forro", tagThree: "#lgbtFriendly"))
        
        partyArray.append(Party(imageView: "festa05", titleParty: "Rock'n'Roll Night", hostName: "Social 21", eventDate: "08/07", tagOne: "#todxs", tagTwo: "#melhorDoRock", tagThree: "#festaBoa"))
        
        partyArray.append(Party(imageView: "festa06", titleParty: "As melhores de 2000", hostName: "Beauty Bar", eventDate: "08/07", tagOne: "#openBar", tagTwo: "#pop2000", tagThree: "#lgbtFriendly"))
        partyArray.append(Party(imageView: "festa07", titleParty: "Rolê das Minas", hostName: "Rep das Amazonas", eventDate: "08/07", tagOne: "#sóAsMinas", tagTwo: "#tocaRaul", tagThree: "#tragaBreja"))
        
        partyArray.append(Party(imageView: "festa08", titleParty: "Churras Unicampers", hostName: "Rep da Zoeira", eventDate: "07/07", tagOne: "#tragaBreja", tagTwo: "#sertanejo", tagThree: "#todxs"))
        
        partyArray.append(Party(imageView: "festa09", titleParty: "Arte e som", hostName: "Ali Club", eventDate: "07/07", tagOne: "#arte", tagTwo: "#exposição", tagThree: "#todxs"))
        
        partyArray.append(Party(imageView: "festa10", titleParty: "Noite do Karaokê", hostName: "Lado C", eventDate: "06/07", tagOne: "#breja&petiscos", tagTwo: "#tocaTudo", tagThree: "#todxs"))
        
        currentPartyArray = partyArray
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return currentPartyArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as? FestaViewCell else {
            return UITableViewCell()
        }
        cell.imgView.image = UIImage(named: currentPartyArray[indexPath.row].imageView)
        
        cell.titleParty.text = currentPartyArray[indexPath.row].titleParty
        
        cell.hostName.text = currentPartyArray[indexPath.row].hostName
        
        cell.eventDate.text = currentPartyArray[indexPath.row].eventDate
        
        cell.tagOne.text = currentPartyArray[indexPath.row].tagOne
        
        cell.tagTwo.text = currentPartyArray[indexPath.row].tagTwo
        
        cell.tagThree.text = currentPartyArray[indexPath.row].tagThree
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        guard !searchText.isEmpty else {
            currentPartyArray = partyArray
            table.reloadData()
            return
        }
        
        currentPartyArray = partyArray.filter({party -> Bool in party.titleParty.lowercased().contains(searchText.lowercased())
        })
        table.reloadData()
    }
    
//    @objc
//    @IBAction func addButton(_ sender: Any) {
//
//        let alertaScreen = alertaService.alert(alertTitle: "Deseja adicioná-la a agenda?", alertInfo: "Para isso, é necessário logar em nosso app.", alertActionButtonTitle: "Entrar") {
//
//            //ADD caminho pra loginScreen
//
//        }
//
//        present(alertaScreen, animated: true)
//    }

}

class Party {
    let imageView: String
    let titleParty: String
    let hostName: String
    let eventDate: String
    let tagOne: String
    let tagTwo: String
    let tagThree: String
    
    init(imageView: String, titleParty: String, hostName: String, eventDate: String, tagOne: String, tagTwo: String, tagThree: String) {
        self.imageView = imageView
        self.titleParty = titleParty
        self.hostName = hostName
        self.eventDate = eventDate
        self.tagOne = tagOne
        self.tagTwo = tagTwo
        self.tagThree = tagThree
    }
}
