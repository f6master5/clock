//
//  InterfaceDetailController.swift
//  Povar WatchKit Extension
//
//  Created by user on 5/26/20.
//  Copyright © 2020 user. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceDetailController: WKInterfaceController {

    @IBOutlet weak var titleLabel: WKInterfaceLabel!
    @IBOutlet weak var picLabel: WKInterfaceLabel!
    @IBOutlet weak var imgView: WKInterfaceImage!
    @IBOutlet weak var author: WKInterfaceLabel!
    @IBOutlet weak var desc: WKInterfaceLabel!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        if let model = context as? Model{
            titleLabel.setText(model.title)
            picLabel.setText(model.images)
            imgView.setImageNamed(model.pictitle)
            author.setText(model.author)
            desc.setText(model.descr)
            
        }

}
