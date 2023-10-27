//
//  ColorGradiente.swift
//  Proyecto smae
//
//  Created by Luis Humberto Martinez Echegaray on 12/11/21.
//

import Foundation
import UIKit

class Colores {
    var gradientLayer: CAGradientLayer!

    init() {
        let colorTop = UIColor(red: 44.0 / 255.0, green: 83.0 / 255.0, blue: 100.0 / 255.0, alpha: 1.0).cgColor
        let colorBottom = UIColor(red: 15.0 / 255.0, green: 32.0 / 255.0, blue: 39.0 / 255.0, alpha: 1.0).cgColor

        self.gradientLayer = CAGradientLayer()
        self.gradientLayer.colors = [colorTop, colorBottom]
        self.gradientLayer.locations = [0.0, 1.0]
    }
}

func gradiente(vista: UIView) {
    let gradiente = Colores()
    vista.backgroundColor = UIColor.clear
    let fondo = gradiente.gradientLayer
    fondo?.frame = vista.frame
    vista.layer.insertSublayer(fondo!, at: 0)
}
