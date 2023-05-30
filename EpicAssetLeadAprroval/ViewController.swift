//
//  ViewController.swift
//  EpicAssetLeadAprroval
//
//  Created by R.Unnikrishnan on 25/05/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var AssetApprovalLeadTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        AssetApprovalLeadTableView.register(UINib(nibName: "EpicAssetLeadApprovalTableViewCell", bundle: nil), forCellReuseIdentifier: "EpicAssetLeadApprovalTableViewCell")
    }


}
extension ViewController : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EpicAssetLeadApprovalTableViewCell", for: indexPath) as! EpicAssetLeadApprovalTableViewCell
        cell.bgView.layer.shadowColor = UIColor(hex: "#13ACF3").cgColor
        cell.bgView.layer.shadowOpacity = 0.5
        cell.bgView.layer.shadowOffset = CGSize(width: 2, height: 2)
        cell.bgView.layer.shadowRadius = 4
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 213
    }
}

// Extension to create a UIColor instance from a hexadecimal color code.
extension UIColor {
    convenience init(hex: String) {
        var formattedHex = hex.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).uppercased()
        if formattedHex.hasPrefix("#")
        {
            formattedHex.remove(at: formattedHex.startIndex)
        }
        var rgbValue: UInt64 = 0
        Scanner(string: formattedHex).scanHexInt64(&rgbValue)
        let red = CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0
        let green = CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0
        let blue = CGFloat(rgbValue & 0x0000FF) / 255.0
        self.init(red: red, green: green, blue: blue, alpha: 1.0)
    }
}
