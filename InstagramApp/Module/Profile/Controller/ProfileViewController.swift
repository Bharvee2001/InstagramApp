//
//  ProfileViewController.swift
//  InstagramApp
//
//  Created by bharvee_parmar on 21/10/19.
//  Copyright © 2019 bharvee_parmar. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController , UICollectionViewDataSource,UICollectionViewDelegate , UICollectionViewDelegateFlowLayout{
    

    @IBOutlet var bioLabel: UILabel!
    
    var modalArrray = Array<ProfileModal>()
    let modalDictionary = [["userImageName" : " Bharvee" , "galleryImage" : "first"],["userImageName" : " Sujal" , "galleryImage" : "second"],["userImageName" : " Kareena" , "galleryImage" : "third"],["userImageName" : " Vivek" , "galleryImage" : "four"],["userImageName" : " Sumit" , "galleryImage" : "images4"],["userImageName" : " Vibhuti" , "galleryImage" : "five"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        
        for data in modalDictionary {
               let modalObj = ProfileModal()
            modalObj.userImageName = data["userImageName"]
            modalObj.galleryImage = data["galleryImage"]
            modalArrray.append(modalObj)
            
            
           }
           
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return modalArrray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "profileCellID", for: indexPath)as! ProfileCollectionViewCell
        
        let modal  = modalArrray[indexPath.row]
        if let userImage = modal.galleryImage{
            cell.galleryImageView.image  = UIImage(named: userImage)
            
        }
        if let userimageName = modal.userImageName{
            cell.imageName.text = userimageName
        }
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellwidth = collectionView.frame.width / 3
        
        return CGSize(width: cellwidth-100, height: 100)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let secondvc = storyboard?.instantiateViewController(identifier: "secondViewID") as! SecondViewController
        let modalobj  = modalArrray[indexPath.row]

        secondvc.modalObject = modalobj; self.navigationController?.pushViewController(secondvc, animated: true)
        
    }
    
    
}
