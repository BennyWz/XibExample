//
//  ViewController.swift
//  XibTest
//
//  Created by Benny Reyes on 10/02/23.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        addCustomView()
    }
    
    func addProgramaticView(){
        let viewProgramatic = ProgramaticView(frame: view.bounds)
        view.addSubview(viewProgramatic)
    }
    
    // AQUI SE PRUEBAN LAS VISTAS HECHAS CON ARCHIVO XIB
    func addSimpleView(){
        guard let simple = SimpleView.instanceFromNib() else { return }
        view.addSubview(simple)
        view.addConstraints([
            NSLayoutConstraint(item: simple, attribute: NSLayoutConstraint.Attribute.leading, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.leading, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: simple, attribute: NSLayoutConstraint.Attribute.trailing, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.trailing, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: simple, attribute: NSLayoutConstraint.Attribute.bottom, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.bottom, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: simple, attribute: NSLayoutConstraint.Attribute.top, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.top, multiplier: 1, constant: 0)
        ])
    }
    
    func addCustomView(){
        guard let custom = CustomView.instanceFromNib() as? CustomView, let img = UIImage(systemName: "person.circle") else { return }
        custom.item = User(name: "USUARIO", img: img)
        view.addSubview(custom)
        view.addConstraints([
            NSLayoutConstraint(item: custom, attribute: NSLayoutConstraint.Attribute.leading, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.leading, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: custom, attribute: NSLayoutConstraint.Attribute.trailing, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.trailing, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: custom, attribute: NSLayoutConstraint.Attribute.bottom, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.bottom, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: custom, attribute: NSLayoutConstraint.Attribute.top, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.top, multiplier: 1, constant: 0)
        ])
    }


}

