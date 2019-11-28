//
//  HomeScreen.swift
//  Project
//
//  Created by Cuong DT on 11/28/19.
//  Copyright © 2019 Cuong DT. All rights reserved.
//

import UIKit

class HomeScreen: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var tbListMovie: UITableView!
    var movie:[Movie] = []
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movie.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let movies = movie[indexPath.row]
        let cell = tbListMovie.dequeueReusableCell(withIdentifier: "tableview", for: indexPath) as! CustomTableViewCell
        cell.setMove(move: movies)
        cell.imageView?.contentMode =  UIView.ContentMode.scaleAspectFill
        cell.imageView?.clipsToBounds = true
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tbListMovie.delegate = self
        tbListMovie.dataSource = self
        
        addMovie()
    }
    
    func addMovie(){
        //var temp:[Movie] = []
        
        let movie1 = Movie(title: "THẤT HÌNH ĐẠI TỘI: SỰ PHẪN NỘ CỦA CÁC VỊ THẦN", durationmin: "24", decription: "Thất đại ác nhân”, một nhóm chiến binh có tham vọng lật đổ vương quốc Britannia, được cho là đã bị tiêu diệt bởi các “hiệp sĩ thánh chiến” mặc dù vẫn còn 1 số người cho rằng họ vẫn còn sống. 10 năm sau, Các hiệp sĩ thánh chiến đã làm 1 cuộc đảo chính và khống chế đức vua, họ trở thành người cai trị độc tài mới của vương quốc. Elizabeth, con gái duy nhất của nhà vua, đã lên đường tìm “thất đại ác nhân” để nhờ họ tái chiếm lại vương quốc.", image: UIImage(named: "movie") ?? UIImage())
        
        let movie2 = Movie(title: "THẤT HÌNH ĐẠI TỘI: SỰ PHẪN NỘ CỦA CÁC VỊ THẦN", durationmin: "24", decription: "Thất đại ác nhân”, một nhóm chiến binh có tham vọng lật đổ vương quốc Britannia, được cho là đã bị tiêu diệt bởi các “hiệp sĩ thánh chiến” mặc dù vẫn còn 1 số người cho rằng họ vẫn còn sống. 10 năm sau, Các hiệp sĩ thánh chiến đã làm 1 cuộc đảo chính và khống chế đức vua, họ trở thành người cai trị độc tài mới của vương quốc. Elizabeth, con gái duy nhất của nhà vua, đã lên đường tìm “thất đại ác nhân” để nhờ họ tái chiếm lại vương quốc.", image: UIImage(named: "movie") ?? UIImage())
        
        movie.append(movie1)
        
        movie.append(movie2)
    
    
    
    
    }
    

}
