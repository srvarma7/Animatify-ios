//
//  TableAnimationViewCell.swift
//  Animatify
//
//  Created by Shubham Singh on 20/06/20.
//  Copyright © 2020 Shubham Singh. All rights reserved.
//

import UIKit

class TableAnimationViewCell: UITableViewCell {
    override class func description() -> String {
        return "TableAnimationViewCell"
    }
    
    // MARK:- outlets for the viewController
    @IBOutlet weak var containerView: UIView!
    
    var tableViewHeight: CGFloat = 64
    var color = UIColor.white {
        didSet {
            self.containerView.backgroundColor = color
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
        self.containerView.roundCorners(cornerRadius: 4)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
