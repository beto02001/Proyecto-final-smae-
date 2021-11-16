//
//  ViewNosotros.swift
//  Proyecto smae
//
//  Created by Luis Humberto Martinez Echegaray on 11/11/21.
//

import UIKit

class ViewNosotros: UIViewController {

    @IBOutlet var coleccionDeViews:[UIView]!
    @IBOutlet var arregloImagenes:[UIImageView]!
    override func viewDidLoad() {
        super.viewDidLoad()
        esquinaRedondeadaySombra()
    }
    

    func esquinaRedondeadaySombra(){
        UIView.animate(withDuration: 3, delay: 0.0, options: [UIView.AnimationOptions.repeat, UIView.AnimationOptions.autoreverse], animations: {
            for imagen in self.arregloImagenes {
                imagen.layer.cornerRadius = imagen.frame.size.height / 2
                imagen.clipsToBounds = true;
                imagen.layer.borderWidth = 2.0
                imagen.layer.borderColor = UIColor.white.cgColor
            }
        
            for vista in self.coleccionDeViews{
                vista.layer.cornerRadius = 20
                vista.layer.shadowColor = UIColor.gray.cgColor
                vista.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
                vista.layer.shadowRadius = 14.0
                vista.layer.borderColor = UIColor.white.cgColor
                vista.layer.borderWidth = 2
                vista.layer.shadowOpacity = 1
                vista.layer.shadowColor = UIColor.blue.cgColor
            }
        }, completion: nil)
    }
}
