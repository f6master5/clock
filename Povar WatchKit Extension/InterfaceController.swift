//
//  InterfaceController.swift
//  Povar WatchKit Extension
//
//  Created by user on 5/26/20.
//  Copyright © 2020 user. All rights reserved.
//

import WatchKit
import Foundation

struct Model {
    var title: String
    var pictitle: String
    var images: String
    var author: String
    var descr: String
    
    static func getData() -> [Model]{
        return[
            Model(title: "Bor", pictitle: "borsch", images: "🍛", author: "Ivanov", descr: "Говядина на косточке - 500г., капуста- 400г, 3-4 картофелины, 1 морковь, 1 больша луковица, 3-4 зуба чеснока, 2 вкусных сладких свеклы. Можно предварительно попробовать. Безвкусная свекла будет просто бесполезна, 2-3 ст.л. томатной пасты. Можно использовать и нормальные, свежие помидоры или помидоры в собственном соку. Я пользуюсь обычно именно ими., 2.ч.л соли."),
        Model(title: "Цезарь", pictitle: "cesar", images: "🥗", author: "В.Петров", descr:  "Грудка куриная - 1 шт. (400 г), Капуста пекинская - 1 шт., Помидоры черри - 150-200 г, Сыр твердый (желательно пармезан) - 50-70 г, Хлеб белый - 3-4 ломтика, Соль - по вкусу, Масло оливковое - 6 ст.л. (для жарки), Перец черный молотый - 1 ч.л., Чеснок - 4 зубчика, Майонез - 3-4 ст.л."),
            Model(title: "Блинчики", pictitle: "blinchik", images: "🥯", author: "М.Панов", descr: "Яйцо – 1 шт.,Мука – 150 г.,Молоко –150 мл.,Подсолнечное масло – 15 мл.,Соль (по вкусу) – 20 г.,Сахар (по вкусу) – 20 г."),
            Model(title: "Мол. кок.", pictitle: "milkshake", images: "🥛", author: "А.Усанин", descr: "Банан 2, Молоко или кокосовое молоко 350 мл., Какао 2 ст. ложки, Мед 1 ст. ложка, Кокосовая стружка для присыпки"),
            Model(title: "Спагетти", pictitle: "spagetti", images: "🍜", author: "Л.Сергеев", descr: "Спагетти - 250 г,Куриные бедра - 2 шт., Помидоры измельченные или томатный сок - 200 мл, Чеснок - 1 зубчик, Лук репчатый - 1 шт., Сыр твёрдый - 30 г")
        ]
    }
}
class InterfaceController: WKInterfaceController {
    
    @IBOutlet weak var table: WKInterfaceTable!


    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        
        table.setNumberOfRows(Model.getData().count, withRowType: "Tableid")
        
        for(index, item) in Model.getData().enumerated(){
            let controller = table.rowController(at: index) as! TableRowController
            controller.titleLabel.setText(item.title)
            controller.img.setText(item.images)
        }
    }
    
    override func contextForSegue(withIdentifier segueIdentifier: String, in table: WKInterfaceTable, rowIndex: Int) -> Any? {
    return Model.getData()[rowIndex]
    }
    
}
