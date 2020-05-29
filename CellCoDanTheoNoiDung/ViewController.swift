//
//  ViewController.swift
//  CellCoDanTheoNoiDung
//
//  Created by admin on 2/4/20.
//  Copyright © 2020 Long. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var arrayName: [String] = ["Để ý information của các cell trong App, chúng ta thấy information vẫn chưa được hiển thị hết, và các cell vẫn chưa được giãn ra để có thể hiển thị hết information",
        "Để ý App chúng ta thấy, các cell trong Table View đã tự động giãn chiều cao để hiển thị toàn bộ thông tin của information Label",
        "ba","bon"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.dataSource = self
        
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 600
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayName.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "IDCell", for: indexPath) as? TableViewCell
        cell?.bioLabel.text = arrayName[indexPath.row]
//        cell?.bioLabel.textColor = UIColor(red:0.75, green:0.75, blue:0.75, alpha:1.0)
        return cell!
        
    }
    // chú ý bấm vào cái label hoặc text trong mainStoryboard rồi bấm  cái lines trong tribulet chuyển nó thành 0, đó là số dòng của cell
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    


}

