//
//  InfoAlimentoviewControler.swift
//  Proyecto smae
//
//  Created by Luis Humberto Martinez Echegaray on 10/11/21.
//

import UIKit
import SwiftUI

class InfoAlimentoviewControler: UIViewController {

    @IBOutlet var coleccionDeViews:[UIView]!
    @IBOutlet var arregloLabels:[UILabel]!
    @IBOutlet weak var imgAlimento: UIImageView!
    @IBOutlet weak var tituloAlimento: UILabel!
    var cantidad = "", peso = "", energía = "", proteinas = "", lipidos = ""
    var carbohidratos = "", macronitrimentos = "", nombreAlimento = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let datosali : [String] = [cantidad,peso, energía, proteinas, lipidos, carbohidratos, macronitrimentos]
        
        for i in 0..<datosali.count{
            arregloLabels[i].text = datosali[i]
        }
        
        navigationItem.title = nombreAlimento
        imgAlimento.image = UIImage(named: nombreAlimento)
        tituloAlimento.text = nombreAlimento
        esquinaRedondeadaySombra()
    }
    
    func esquinaRedondeadaySombra(){
        for vista in coleccionDeViews{
            vista.layer.cornerRadius = 20
            vista.layer.shadowColor = UIColor.gray.cgColor
            vista.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
            vista.layer.shadowRadius = 14.0
            vista.layer.shadowOpacity = 1
        }
    }

}
