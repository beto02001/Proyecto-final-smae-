//
//  ViewAlimentos.swift
//  Proyecto smae
//
//  Created by Luis Humberto Martinez Echegaray on 10/11/21.
//

import UIKit

class ViewAlimentos: UIViewController, UITableViewDelegate, UITableViewDataSource {

   
    @IBOutlet weak var tablaAlimentos: UITableView!
    var listaDeAlimentos: [Datos.Elementos]?
    var nombreGrupo = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tablaAlimentos.delegate = self
        tablaAlimentos.dataSource = self

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        listaDeAlimentos!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tablaAlimentos.dequeueReusableCell(withIdentifier: "celdaListaAlimento", for: indexPath) as! VistaCeldaAlimentosTableViewCell
        let lista = listaDeAlimentos![indexPath.row]
        celda.imgAlimento.image = UIImage(named: lista.nombreElelemto)
        celda.imgGrupo.image = UIImage(named: nombreGrupo)
        celda.nombreAlimento.text = lista.nombreElelemto
        celda.piezas.text = lista.cantidad
        return celda
    }
    
    //Envío de datos hacia la vista de Datos de los alimentos
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is InfoAlimentoviewControler{
            let lugar = tablaAlimentos.indexPathForSelectedRow!.row
            let alimentoEspecifico = listaDeAlimentos![lugar]
            let caracteristicas = segue.destination as? InfoAlimentoviewControler
            caracteristicas?.cantidad = alimentoEspecifico.cantidad
            caracteristicas?.peso = alimentoEspecifico.peso
            caracteristicas?.energía = String(alimentoEspecifico.kcal) + " kcal"
            caracteristicas?.proteinas = String(alimentoEspecifico.proteinas) + " g"
            caracteristicas?.lipidos = String(alimentoEspecifico.lipidos) + " g"
            caracteristicas?.carbohidratos = String(alimentoEspecifico.carbohidratos) + " g"
            caracteristicas?.macronitrimentos = alimentoEspecifico.micronutrimento
            caracteristicas?.nombreAlimento =  alimentoEspecifico.nombreElelemto
        }
    }

}
