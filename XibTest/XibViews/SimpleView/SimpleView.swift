//
//  SimpleView.swift
//  XibTest
//
//  Created by Benny Reyes on 10/02/23.
//

import UIKit

class SimpleView:UIView{
    
    // En clase vimos que el class es como el static con la diferencia que
    // puedan hacer el override las clases hijas
    class func instanceFromNib() -> UIView? {
        let nib = UINib(nibName: "SimpleView", bundle: .main)
        let instantiate = nib.instantiate(withOwner: SimpleView.self, options: nil)
        guard let view = instantiate.first as? UIView else { return nil }
        return view
//            UINib(nibName: "nib file name", bundle: nil).instantiateWithOwner(nil, options: nil)[0] as UIView
    }
    
    
    override init(frame: CGRect) {
        print("DEBUG || Se inicio con FRAME")
        super.init(frame: frame)
    }
    
    // Se manda a llamar cuando es inicializado desde el XIB
    required init?(coder: NSCoder) {
        print("DEBUG || Se inicio con CODER")
        super.init(coder: coder)
    }
    
}
