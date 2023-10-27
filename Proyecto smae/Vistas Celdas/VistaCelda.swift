//
//  VistaCelda.swift
//  Proyecto smae
//
//  Created by Luis Humberto Martinez Echegaray on 10/11/21.
//

import UIKit

class VistaCelda: UITableViewCell {

    @IBOutlet weak var imagenCeldaGrupo: UIImageView!
    @IBOutlet weak var textoCeldaGrupo: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
