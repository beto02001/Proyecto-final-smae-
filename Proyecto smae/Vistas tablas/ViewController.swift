//
//  ViewController.swift
//  Proyecto smae
//
//  Created by Luis Humberto Martinez Echegaray on 10/11/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {


    @IBOutlet weak var tablaGrupoAlimentos: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tablaGrupoAlimentos.delegate = self
        tablaGrupoAlimentos.dataSource = self
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return alimentos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt renglon: IndexPath) -> UITableViewCell {
        let celda = tablaGrupoAlimentos.dequeueReusableCell(withIdentifier: "celdaAlimento", for: renglon) as! VistaCelda
        let lista = alimentos[renglon.row]
        celda.imagenCeldaGrupo.image = UIImage(named: lista.grupo)
        celda.textoCeldaGrupo.text = lista.nombre
        return celda
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is ViewAlimentos{
            let renglon = tablaGrupoAlimentos.indexPathForSelectedRow!.row
            let listaAlimento = alimentos[renglon].elementos
            let informacion = segue.destination as? ViewAlimentos
            informacion?.listaDeAlimentos = listaAlimento
            informacion?.nombreGrupo = alimentos[renglon].grupo
        }
    }
    
    
}

