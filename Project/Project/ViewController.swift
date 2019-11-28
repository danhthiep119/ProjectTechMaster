//
//  ViewController.swift
//  Project
//
//  Created by Cuong DT on 11/23/19.
//  Copyright © 2019 Cuong DT. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {
    let reuseIdentifier = "cell"
    var items = [0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
    
    var arrData = [String]()
    var arrSelectedIndex = [IndexPath]()
    var arrSelectedData = [String]()
    
    
    
    @IBOutlet weak var viewTitle: UIView!
    
    @IBOutlet weak var viewUser: UIView!
    
    @IBOutlet weak var viewPass: UIView!
        
    @IBOutlet weak var viewPassRepeat: UIView!
    
    @IBOutlet weak var txtDieuKhoan: UITextView!
    
    @IBOutlet weak var btnRegister: UIButton!
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.items.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath as IndexPath) as! CollectionViewCell
        for index in items
        {
            if index == 0
            {
                cell.myImage.image = UIImage(named: "Chair1")
                cell.backgroundColor = UIColor.white
            }
            else if index == 1
            {
                cell.myImage.image = UIImage(named: "Chair2")
                cell.backgroundColor = UIColor.gray
            }
        }
        //cell.backgroundColor = UIColor.white
        cell.layer.borderWidth = 1
        cell.layer.cornerRadius = 5
        
        /*if arrSelectedIndex.contains(indexPath) {
            cell.myImage.image = UIImage(named: "Chair1")
        }
        else {
            cell.myImage.image = UIImage(named: "Chair2")
        }

            cell.layoutSubviews()*/
            return cell
        
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath) as! CollectionViewCell
        cell.myImage.image = UIImage(named: "Chair2")
        txtSelection.text = "you chose :\(indexPath)"
    }
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath) as! CollectionViewCell
        cell.myImage.image = UIImage(named: "Chair1")
        cell.reloadInputViews()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100, height: 100)
    }


    /*func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("You selected cell #\(indexPath.item)!")
        let strData = arrData[indexPath.item]

        if arrSelectedIndex.contains(indexPath) {
            arrSelectedIndex = arrSelectedIndex.filter { $0 != indexPath}
            arrSelectedData = arrSelectedData.filter { $0 != strData}
        }
        else {
            arrSelectedIndex.append(indexPath)
            arrSelectedData.append(strData)
        }

        collectionView.reloadData()
    }*/

    @IBOutlet weak var txtSelection: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }


}

