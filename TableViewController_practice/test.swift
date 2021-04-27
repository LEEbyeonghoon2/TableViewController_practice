//
//  test.swift
//  TableViewController_practice
//
//  Created by 이병훈 on 2021/04/27.
//

import UIKit

class test: UITableViewController {
    
    var data = [("허경민","1990.08.26",UIImage(named: "heo.png")),
                ("박건우","1990.09.08",UIImage(named: "park.png")),
                ("정수빈","1990.10.07",UIImage(named: "jung.png"))]
    
    lazy var list:[playerVO] = {
        var datalist = [playerVO]()
        
        for (name,date,image) in data {
            let pvo = playerVO()
            pvo.playerName = name
            pvo.playerDate = date
            pvo.playerImage = image
            
            datalist.append(pvo)
            
        }
        return datalist
    }()
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.data.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = self.data[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "playerCell")!
        
        //각 태그로 구분된 값을 받아 각 변수에 넣습니다.
        let player = cell.viewWithTag(101) as? UILabel
        
        let date = cell.viewWithTag(102) as? UILabel
        
        let image = cell.viewWithTag(103) as? UIImageView
        
        player?.text = row.0
        date?.text = row.1
        image?.image = row.2

        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(indexPath.row)번째 행을 터치했습니다.")
    }
  
}
