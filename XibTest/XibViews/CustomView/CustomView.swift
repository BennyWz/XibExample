//
//  CustomView.swift
//  XibTest
//
//  Created by Benny Reyes on 10/02/23.
//

import UIKit

final class CustomView: UIView{
    
    @IBOutlet weak var lblTitle:UILabel!
    @IBOutlet weak var imgExample:UIImageView!
    // este se usaria para tu colleccion por el manager
    // pero como buena practica seria mejor un metodo que envie
    // solo el nombre y la imagen para que las vistas no almacenen modelos
    var item:User?{
        didSet {
            lblTitle.text = item?.name
            imgExample.image = item?.img
        }
    }
    
    class func instanceFromNib() -> UIView? {
        let nib = UINib(nibName: "CustomView", bundle: .main)
        let instantiate = nib.instantiate(withOwner: CustomView.self, options: nil)
        guard let view = instantiate.first as? UIView else { return nil }
        return view
//            UINib(nibName: "nib file name", bundle: nil).instantiateWithOwner(nil, options: nil)[0] as UIView
    }
    
    override init(frame: CGRect) {
        print("DEBUG || Se inicio con FRAME")
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        print("DEBUG || Se inicio con CODER")
        super.init(coder: coder)
    }
    
}

struct User{
    let name:String
    let img:UIImage
}
