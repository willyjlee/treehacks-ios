//
//  ImageCard.swift
//  CardSlider
//
//  Created by Saoud Rizwan on 2/27/17.
//  Copyright © 2017 Saoud Rizwan. All rights reserved.
//

import UIKit

class ImageCard: CardView {

    init(frame: CGRect, num: Int) {
        super.init(frame: frame)
        // image
        let imageView = UIImageView(image: UIImage(named: "dummy_image\(num)"))
        imageView.contentMode = .scaleAspectFill
        imageView.backgroundColor = UIColor(red: 67/255, green: 79/255, blue: 182/255, alpha: 1.0)
        imageView.layer.cornerRadius = 5
        imageView.layer.masksToBounds = true
        
        imageView.frame = CGRect(x: 12, y: 12, width: self.frame.width - 24, height: self.frame.height - 103)
        self.addSubview(imageView)
        
        // dummy text boxes
        
        let textBox1 = UIView()
        textBox1.backgroundColor = UIColor(red: 67/255, green: 79/255, blue: 182/255, alpha: 1.0)
        textBox1.layer.cornerRadius = 12
        textBox1.layer.masksToBounds = true
        
        textBox1.frame = CGRect(x: 12, y: imageView.frame.maxY + 15, width: 200, height: 24)
        self.addSubview(textBox1)
        
        let textBox2 = UIView()
        textBox2.backgroundColor = UIColor(red: 67/255, green: 79/255, blue: 182/255, alpha: 1.0)
        textBox2.layer.cornerRadius = 12
        textBox2.layer.masksToBounds = true
        
        textBox2.frame = CGRect(x: 12, y: textBox1.frame.maxY + 10, width: 120, height: 24)
        self.addSubview(textBox2)
        
        // Stewart testing UILabel
        let titleLabel = UILabel()
        titleLabel.text = "Read more here"
        titleLabel.numberOfLines = 2
        titleLabel.font = UIFont(name: "AvenirNext-Bold", size: 19)
        titleLabel.textColor = UIColor(red: 83/255, green: 98/255, blue: 196/255, alpha: 1.0)
        titleLabel.textAlignment = .center
        titleLabel.frame = CGRect(x: 12, y: imageView.frame.maxY + 15, width: 200, height: 24)
        self.addSubview(titleLabel)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
