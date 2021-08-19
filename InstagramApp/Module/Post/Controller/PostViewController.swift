//
//  PostViewController.swift
//  InstagramApp
//
//  Created by bharvee_parmar on 21/10/19.
//  Copyright © 2019 bharvee_parmar. All rights reserved.
//

import UIKit

class PostViewController : UIViewController , UITableViewDataSource , UITableViewDelegate{

    var modalArray = Array<PostModal>()
    let ModalDictionary = [["profile" : "images","userName" : "Bharvee", "userImage" : "1" , "userDesc" : "HIII ,I AM BHARVEE , I AM 19 YEARS"],["profile" : "images1","userName" : "kareena", "userImage" : "2" , "userDesc" : "HIII , I AM KAREENA , I STUDIED IN 5 STANDARD AT SIGMA SCHOOL"],["profile" : "images2","userName" : "sujal", "userImage" : "3" , "userDesc" : "HIII , I AM SUAJL ,HOW ARE YOU , NICE TO MEET YOU"]]
    
override func viewDidLoad() {
        super.viewDidLoad()
    
    for data in ModalDictionary {
        let modalObj = PostModal()
        modalObj.profile = data["profile"]
        modalObj.userName = data["userName"]
        modalObj.userImage = data["userImage"]
        modalObj.userDesc = data["userDesc"]
        
        modalArray.append(modalObj)
    }
    
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return modalArray.count
      }
      
      func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "postCellID", for: indexPath)as! PostTableViewCell
        
        let modal = modalArray[indexPath.row]
        
        if let imagestr = modal.profile {
            
            cell.profileImageView.image = UIImage(named: imagestr)
            
        }
        if let username = modal.userName{
            cell.userNameLabel.text = username
        }
        
        if let userimage = modal.userImage{
            cell.userImageView.image = UIImage(named:  userimage)
        }
        if let userDesc = modal.userDesc {
            cell.userDescLabel.text = userDesc
        }
        
        
        return cell
      }
    
    
    
}
