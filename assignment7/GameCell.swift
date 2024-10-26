//
//  GameCell.swift
//  assignment7
//
//  Created by Daniyal Nurgazinov on 26.10.2024.
//

import UIKit

class GameCell: UICollectionViewCell {
    @IBOutlet weak var coverImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var platformLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Rounded corners and shadow for the cover image
        coverImageView.layer.cornerRadius = 10
        coverImageView.clipsToBounds = true
        
        // Optional: Add shadow to the cell
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOpacity = 0.2
        self.layer.shadowOffset = CGSize(width: 2, height: 2)
        self.layer.shadowRadius = 5
    }


}
