//
//  ViewController.swift
//  eggApp
//
//  Created by いわし on 2020/09/05.
//  Copyright © 2020 iwasi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        countLabel.text = String(count)
        
        dispImage()
        
    }

    @IBOutlet weak var countLabel: UILabel!
   
    
    @IBOutlet weak var textLabel: UILabel!
    
    var count:Int = 100
    
    @IBOutlet weak var imageview: UIImageView!
    
    var dispImageNum = 0
    
    func dispImage() {
        let imageArray = ["egg01","egg02","egg03"]
        
        let name = imageArray[dispImageNum]
//     name = ["egg01"]
        let image = UIImage(named: name)
        imageview.image = image
        
        
    }
    
    
    @IBAction func button(_ sender: Any) {
        count -= 1
        countLabel.text = String(count)
//  カウント数に応じてテキストの変更
        if (count == 75) {
            textLabel.text = "まだまだ!"
        }else if (count == 50){
            textLabel.text = "半分!"
            dispImageNum += 1
        }else if (count == 25) {
            textLabel.text = "もうちょい!"
        }else if count == 0 {
            textLabel.text = "わーい!"
            dispImageNum += 1
        }else if (count <= 0){
            countLabel.text == "0"
        }
    dispImage()
        
    }
}

