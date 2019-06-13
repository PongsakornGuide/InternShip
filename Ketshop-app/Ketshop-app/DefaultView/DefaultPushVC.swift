//
//  DefaultPushVC.swift
//  KetShop
//
//  Created by Peerapong Ruangudom on 12/1/2562 BE.
//  Copyright © 2562 Peerapong Ruangudom. All rights reserved.
//

import UIKit

class DefaultPushVC: DefaultVC {
    
    var page = 1
    var perPage = 10
    var statusLoadMore = true

    var titleOnNav = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Add Back
        self.setCustomButtonBack()
        // Do any additional setup after loading the view.
        
        //Tab Hide
//        self.tabBarController?.tabBar.isHidden = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
    func setTitleLeft(titleLeft:String){
        //Set Title Left
        let titleLabel = UILabel(frame: CGRect(x: 50, y: 0, width: view.frame.width - 32, height: view.frame.height))
        titleLabel.text = "  \(titleLeft)"
        titleLabel.textColor = UIColor.red
        //titleLabel.font = UIFont.systemFont(ofSize: 20)
        titleLabel.font = UIFont.boldSystemFont(ofSize: 20.0)
        //titleLabel.font = UIFont.systemFont(ofSize: 20)
        navigationItem.titleView = titleLabel
    }
    
    func setTitleLeftNoButtonBack(titleLeft:String){
        //Set Title Left
        let titleLabel = UILabel(frame: CGRect(x: 10, y: 0, width: view.frame.width - 32, height: view.frame.height))
        titleLabel.text = "  \(titleLeft)"
        titleLabel.textColor = UIColor.black
        //titleLabel.font = UIFont.systemFont(ofSize: 20)
        titleLabel.font = UIFont.boldSystemFont(ofSize: 20.0)
        //titleLabel.font = UIFont.systemFont(ofSize: 20)
        navigationItem.titleView = titleLabel
    }
    
    func setCustomButtonBack(){
        let image3 = UIImage(named: "btn_back")
        let frameimg = CGRect(x: CGFloat(8), y: CGFloat(12), width: CGFloat(20), height: CGFloat(20))
        let someButton = UIButton(frame: frameimg)
        someButton.setBackgroundImage(image3, for: .normal)
        someButton.addTarget(self, action: #selector(self.backAction), for: .touchUpInside)
        someButton.showsTouchWhenHighlighted = true
        let mailbutton = UIBarButtonItem(customView: someButton)
        navigationItem.leftBarButtonItem = mailbutton
    }
    
    func setCustomButtonBackToRoot(){
        let image3 = UIImage(named: "btn_back")
        let frameimg = CGRect(x: CGFloat(8), y: CGFloat(12), width: CGFloat(20), height: CGFloat(20))
        let someButton = UIButton(frame: frameimg)
        someButton.setBackgroundImage(image3, for: .normal)
        someButton.addTarget(self, action: #selector(self.backToRootAction), for: .touchUpInside)
        someButton.showsTouchWhenHighlighted = true
        let mailbutton = UIBarButtonItem(customView: someButton)
        navigationItem.leftBarButtonItem = mailbutton
    }
    
    func hideButtonBack()
    {
//        navigationItem.leftBarButtonItem = nil
//
//        let image3 = UIImage(named: "btn_back")
//        let frameimg = CGRect(x: CGFloat(8), y: CGFloat(12), width: CGFloat(20), height: CGFloat(20))
//        let someButton = UIButton(frame: frameimg)
//        someButton.setBackgroundImage(image3, for: .normal)
//        someButton.addTarget(self, action: #selector(self.backAction), for: .touchUpInside)
//        someButton.showsTouchWhenHighlighted = true
//        let mailbutton = UIBarButtonItem(customView: someButton)
//        navigationItem.leftBarButtonItem = mailbutton
    }
    
    //left
    func setTitleRight2(titleRight2:String) {
        //Set Title Left
        let titleLabel = UILabel(frame: CGRect(x: 50, y: 0, width: view.frame.width - 32, height: view.frame.height))
        titleLabel.text = "  \(titleRight2)"
        titleLabel.textColor = UIColor.black
        //titleLabel.font = UIFont.systemFont(ofSize: 20)
        titleLabel.font = UIFont.boldSystemFont(ofSize: 20.0)
        //titleLabel.font = UIFont.systemFont(ofSize: 20)
        navigationItem.titleView = titleLabel
    }
    //title center
    func setTitleHome(titleHome:String){
        let titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width - 400, height: view.frame.height))
        titleLabel.textAlignment = NSTextAlignment.center;
        titleLabel.text = "  \(titleHome)"
        titleLabel.textColor = UIColor.black
        titleLabel.font = UIFont.boldSystemFont(ofSize: 20.0)
        navigationItem.titleView = titleLabel
    }
    
    
    @objc func backAction() {
        self.navigationController?.popViewController(animated: true)
    }
    
    @objc func backToRootAction() {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    
}
