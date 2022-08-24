//
//  SenderCurrentTitleViewController.swift
//  SeSAC_EmotionDiary
//
//  Created by Mac Pro 15 on 2022/08/25.
//

import UIKit

enum Emotion: String {
    case happy = "Happy"
    case panic = "Panic"
    case sad = "Sad"
}

class SenderCurrentTitleViewController: UIViewController {
    
    @IBOutlet weak var senderCurrentTItleLabel1: UILabel!
    @IBOutlet weak var senderCurrentTItleLabel2: UILabel!
    @IBOutlet weak var senderCurrentTItleLabel3: UILabel!
    
    var sender: [String:Int] = ["Happy": 4, "Panic": 2, "Sad": 1]
    override func viewDidLoad() {
        super.viewDidLoad()

     
    }
    


}
