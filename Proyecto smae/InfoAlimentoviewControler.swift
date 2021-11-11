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
    var cantidad = ""
    var peso = ""
    var energía = ""
    var proteinas = ""
    var lipidos = ""
    var carbohidratos = ""
    var macronitrimentos = ""
    var nombreAlimento = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        arregloLabels[0].text = cantidad
        arregloLabels[1].text = peso
        arregloLabels[2].text = energía
        arregloLabels[3].text = proteinas
        arregloLabels[4].text = lipidos
        arregloLabels[5].text = carbohidratos
        arregloLabels[6].text = macronitrimentos
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
