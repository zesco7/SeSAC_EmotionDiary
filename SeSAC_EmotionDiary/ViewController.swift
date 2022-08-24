//
//  ViewController.swift
//  SeSAC_EmotionDiary
//
//  Created by Mac Pro 15 on 2022/08/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    
    var labelArr: [UILabel] { [label1, label2, label3]
    }
    var buttonName = ["행복해", "화가나", "당황스러워"]
    var countClickedNumber = [0, 0, 0]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let image = UIImage(named: "sesac_slime1")?.withRenderingMode(.alwaysOriginal)
        let image2 = UIImage(named: "sesac_slime4")?.withRenderingMode(.alwaysOriginal)
        let image3 = UIImage(named: "sesac_slime7")?.withRenderingMode(.alwaysOriginal)
        button1.setImage(image, for: .normal)
        button2.setImage(image2, for: .normal)
        button3.setImage(image3, for: .normal)
        
        for item in Range(0...2) {
            labelArr[item].text = "\(buttonName[item]) \(countClickedNumber[item])"
        }

    }
    @IBAction func button1Clicked(_ sender: UIButton) {
        countClickedNumber[sender.tag] += 1
        labelArr[sender.tag].text = "\(buttonName[sender.tag]) \(countClickedNumber[sender.tag])"
    }
    
    @IBAction func button2Clicked(_ sender: UIButton) {
        countClickedNumber[sender.tag + 1] += 1
        labelArr[sender.tag + 1].text = "\(buttonName[sender.tag + 1]) \(countClickedNumber[sender.tag + 1])"
    }
    
    @IBAction func button3Clicked(_ sender: UIButton) {
        countClickedNumber[sender.tag + 2] += 1
        labelArr[sender.tag + 2].text = "\(buttonName[sender.tag + 2]) \(countClickedNumber[sender.tag + 2])"
    }
    

}

