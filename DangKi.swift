//
//  DangKi.swift
//  Đăng kí thành viên
//
//  Created by Tran Phi Hai on 2020/08/07.
//  Copyright © 2020 TranPhiHai. All rights reserved.
//

import UIKit

class DangKi: UIViewController {

    @IBOutlet weak var txtvThongTin: UITextView!
    
    var ThamSo:UserDefaults!

    override func viewDidLoad() {
        super.viewDidLoad()
        ThamSo = UserDefaults ()
        let hoten:String = ThamSo.object(forKey: "hoten") as! String
        let email:String = ThamSo.object(forKey: "email") as! String
        let diachi:String = ThamSo.object(forKey: "diachi") as! String
        let tuoi:String = ThamSo.object(forKey: "tuoi") as! String
        
        var chuoi:String = ""
        chuoi = "Bạn vừa đăng kí thông tin như sau: \n Họ Tên: " + hoten + " \n Email: " + email + "\n Địa Chỉ: " + diachi + " \n Tuổi: " + tuoi
        txtvThongTin.text = chuoi
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
