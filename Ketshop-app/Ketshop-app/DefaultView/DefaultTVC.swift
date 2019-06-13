//
//  DefaultTVC.swift
//  Ketshop-app
//
//  Created by Guide on 5/6/2562 BE.
//  Copyright © 2562 guide. All rights reserved.
//

import UIKit
enum ListCellType: Int{
    case type1
    case type2
    case type3
    case type4
}

class DefaultTVC: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    let burgerImages : [String] = ["bookshelf.png","library.png"]
    let Labeltext1  = ["AFW1","ADS2"]
    let Labeltext2 = ["B2R3","B3DA"]
    
    let Labeltext3 = [["AFW1"],["WWW"]]
    let Labeltext4 = ["B2R3","B3DA"]
    
    let text4 : [Int] = [111,2222,3333]
    let text5 = ["AFW1","ADS2","ACS2"]
    let text6 = ["B2R3","B3DA","ADF3"]


    let text7 = ["OOO","OOO","OOO"]
    let text8 = ["OOO","OOO","OOO"]
    
    var contientIndex : Int!

    var tableView : UITableView?{
        didSet{
            guard let tableView = tableView  else {
                return
            }
            registerAllNibs(tableView: tableView)
        }
    }
    
    var displayListType: ListCellType = .type1{
        didSet{
            tableView?.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    private func registerAllNibs(tableView: UITableView){
        //Type1
        let nib = UINib(nibName: "Cell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "Cell")
        
        //Type2
        let nib2 = UINib(nibName: "WarehousePD", bundle: nil)
        tableView.register(nib2, forCellReuseIdentifier: "WarehousePD")
        
        //Type3
        let nib3 = UINib(nibName: "WarehouseDTVC", bundle: nil)
        tableView.register(nib3, forCellReuseIdentifier: "WarehouseDTVC")
        
        let nib4 = UINib(nibName: "DetailTVC", bundle: nil)
        tableView.register(nib4, forCellReuseIdentifier: "DetailTVC")
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return displayListType == .type1 ? Labeltext1.count : Labeltext2.count
//        return displayListType == .type2 ? Labeltext2.count : Labeltext3.count
        switch displayListType {
        case .type1:
            return 0
        case .type2:
            return 0
        case .type3:
            return displayListType == .type3 ? Labeltext2.count : Labeltext2.count
        case .type4:
            return displayListType == .type4 ? Labeltext3.count : Labeltext3.count
        }
    }
    func warehousedt(contientIndex: Int) {
        self.contientIndex = contientIndex
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch displayListType {
        case .type1:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell",for: indexPath) as? Cell else{
               return UITableViewCell()
            }
            cell.custom(imagePD: burgerImages[indexPath.row], head: Labeltext1[indexPath.row], num: Labeltext1[indexPath.row], imagePD2: burgerImages[indexPath.row], head2: Labeltext1[indexPath.row], num2: Labeltext4[indexPath.row])
            
            return cell
            
            
        case .type2:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "WarehousePD",for: indexPath) as? Cell else{
                return UITableViewCell()
            }
            cell.warehouse(image: burgerImages[indexPath.row],name: Labeltext2[indexPath.row],code: Labeltext2[indexPath.row],price: Labeltext2[indexPath.row])
            return cell
            
        case .type3:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "WarehouseDTVC",for: indexPath) as? Cell else{
                return UITableViewCell()
            }
            cell.warehousedt(image: burgerImages[indexPath.row], name: Labeltext2[indexPath.row], code: Labeltext2[indexPath.row], price: Labeltext2[indexPath.row], oth: Labeltext2[indexPath.row], oth1: Labeltext2[indexPath.row], oth2: Labeltext2[indexPath.row])
            return cell
            
        case .type4:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "DetailTVC",for: indexPath) as? Cell else{
                return UITableViewCell()
            }
            cell.detail(name: Labeltext3[contientIndex][indexPath.row] , code: Labeltext3[contientIndex][indexPath.row], day: Labeltext3[contientIndex][indexPath.row], end: Labeltext3[contientIndex][indexPath.row])
            return cell
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        didTapOn(indexPath: indexPath)
    }
    
    //For child to overide when want action when user tap on cell
    func didTapOn(indexPath: IndexPath){
        
    }
}
    


