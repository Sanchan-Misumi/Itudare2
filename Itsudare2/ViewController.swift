//
//  ViewController.swift
//  Itsudare2
//
//  Created by Maho Misumi on 2017/10/25.
//  Copyright © 2017年 Maho Misumi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var itsuLabel: UILabel!
    @IBOutlet var dokoLabel: UILabel!
    @IBOutlet var dareLabel: UILabel!
    @IBOutlet var doushitaLabel: UILabel!

    let ituArray: [String] = ["一年前", "昨日", "今日", "明日"]
    let dokoArray: [String] = ["バイト先", "家", "電車", "学校"]
    let dareArray: [String] = ["私", "チャコ", "母親", "ながたさん"]
    let doushitaArray: [String] = ["怒った", "泣いた", "叫んだ", "寝た"]
    
    var Index: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func change(){
        itsuLabel.text = ituArray[Index]
        dokoLabel.text = dokoArray[Index]
        dareLabel.text = dareArray[Index]
        doushitaLabel.text = doushitaArray[Index]
        
        Index = Index + 1
        
        if Index > 3{
        Index = 0
        }
        
    }
    
    @IBAction func reset(){
        itsuLabel.text = "____"
        dokoLabel.text = "____"
        dareLabel.text = "____"
        doushitaLabel.text = "____"
        
        Index = 0
    }
    
    @IBAction func random(){
        
        let itsuIndex = Int(arc4random_uniform(4))
        let dokoIndex = Int(arc4random_uniform(4))
        let dareIndex = Int(arc4random_uniform(4))
        let doushitaIndex = Int(arc4random_uniform(4))
        
        print("いつ: \(itsuIndex)")
        print("だれ: \(dareIndex)")
        print("どこ: \(dokoIndex)")
        print("どうした: \(doushitaIndex)")
        
        
        itsuLabel.text = ituArray[itsuIndex]
        dokoLabel.text = dokoArray[dokoIndex]
        dareLabel.text = dareArray[dareIndex]
        doushitaLabel.text = doushitaArray[doushitaIndex]
    }


}

