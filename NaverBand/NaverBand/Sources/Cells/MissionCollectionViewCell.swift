//
//  MissionCollectionViewCell.swift
//  NaverBand
//
//  Created by 이정엽 on 2021/05/19.
//

import UIKit

class MissionCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var superView: UIView!
    // term은 초록색 바탕에 잇는 글씨
    @IBOutlet weak var termBackgroundView: UIView!
    @IBOutlet weak var termLabel: UILabel!
    
    @IBOutlet weak var missionImageView: UIImageView!
    
    // 이미지 뷰 위에 있는 라벨
    @IBOutlet weak var missionTitleLabel: UILabel!
    // 몇 명 지워했는지에 대한 라벨
    @IBOutlet weak var statusLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.superView.layer.cornerRadius = 15
        // Initialization code
    }

    func intializeData(_ image: String, _ missionTitle: String, _ term: String, _ status: String) {
        self.missionImageView.image = UIImage(named: image)
        self.termLabel.text = term
        self.missionTitleLabel.text = missionTitle
        self.statusLabel.text = status
        self.termBackgroundView.round(corners: [.topLeft, .bottomRight], cornerRadius: 15)
    }
}