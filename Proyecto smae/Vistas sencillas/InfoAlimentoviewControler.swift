//
//  InfoAlimentoviewControler.swift
//  Proyecto smae
//
//  Created by Luis Humberto Martinez Echegaray on 10/11/21.
//

import UIKit

class InfoAlimentoviewControler: UIViewController {

    @IBOutlet var coleccionDeViews: [UIView]!
    @IBOutlet var arregloLabels: [UILabel]!
    @IBOutlet weak var imgAlimento: UIImageView!
    @IBOutlet weak var tituloAlimento: UILabel!
    var cantidad = "", peso = "", energía = "", proteinas = "", lipidos = ""
    var carbohidratos = "", macronitrimentos = "", nombreAlimento = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        let datosali: [String] = [cantidad, peso, energía, proteinas, lipidos, carbohidratos, macronitrimentos]

        for iterator in 0 ..< datosali.count {
            arregloLabels[iterator].text = datosali[iterator]
        }

        navigationItem.title = nombreAlimento
        imgAlimento.image = UIImage(named: nombreAlimento)
        tituloAlimento.text = nombreAlimento
        esquinaRedondeadaySombra()
    }

    func esquinaRedondeadaySombra() {
        UIView.animate(withDuration: 4, delay: 0.0, options: [UIView.AnimationOptions.repeat, UIView.AnimationOptions.autoreverse], animations: {
            for vista in self.coleccionDeViews {
                vista.layer.cornerRadius = 20
                vista.layer.shadowColor = UIColor.yellow.cgColor
                vista.layer.shadowColor = UIColor.purple.cgColor
                vista.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
                vista.layer.shadowRadius = 10.0
                vista.layer.shadowOpacity = 1
            }
        }, completion: nil)
    }
}
