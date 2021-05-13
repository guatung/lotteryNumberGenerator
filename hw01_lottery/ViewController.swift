//
//  ViewController.swift
//  hw01_lottery
//
//  Created by WEN-HSUAN TUNG on 2021/5/8.
//

import UIKit

class ViewController: UIViewController {
    var lottertNumber = [Int]()
    var pickedNumberSet = [Int]()

    
    @IBOutlet weak var number1: UILabel!
    @IBOutlet weak var number2: UILabel!
    @IBOutlet weak var number3: UILabel!
    @IBOutlet weak var number4: UILabel!
    @IBOutlet weak var number5: UILabel!
    @IBOutlet weak var number6: UILabel!
    
    // 迴圈跑出1-49的號碼
    // 從裡面選出六個(不重複)
    // 由小排到大
    
    func getNumber()-> [Int] {
        var numbers = [Int]()
        for x in 1...49{
            numbers.append(x)
        }
        return numbers
        
    }
    
    func pickNumber()-> [Int]{
        lottertNumber = getNumber()
        var numbersSet = [Int]()
        // 從陣列中取六個號碼
        // 號碼不得重複
        // 可以用key 也可以用持續刪減已取得的號碼 但取完六個要恢復初始49個號碼
        for _ in 0...5 {
            let randomChoose = Int.random(in: 0...lottertNumber.count-1)
            numbersSet.append(lottertNumber[randomChoose])
            lottertNumber.remove(at: randomChoose)
        }
        numbersSet.sort(by: <)
        print(numbersSet)
        return numbersSet
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
    }
    
    @IBAction func showNumberButton(_ sender: Any) {
        pickedNumberSet = pickNumber()
        number1.text = String(pickedNumberSet[0]);
        number2.text = String(pickedNumberSet[1]);
        number3.text = String(pickedNumberSet[2]);
        number4.text = String(pickedNumberSet[3]);
        number5.text = String(pickedNumberSet[4]);
        number6.text = String(pickedNumberSet[5]);
        
    }


}

