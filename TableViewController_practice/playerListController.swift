//
//  playerListController.swift
//  TableViewController_practice
//
//  Created by 이병훈 on 2021/04/25.
//

import UIKit

class playerListController: UITableViewController {
    
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
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "playerCell") as! customPlayer
        cell.player.text = row.0
        cell.birthdate.text = row.1
        cell.imageView?.image = row.2

        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(indexPath.row)번째 행을 터치했습니다.")
    }
    
}
