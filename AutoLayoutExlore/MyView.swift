//
//  MyView.swift
//  AutoLayoutExlore
//
//  Created by Icetusk on 23.12.2023.
//

import UIKit

@IBDesignable
class MyView: UIView {
    
    @IBInspectable
    var padding: CGFloat = 25.0 {
        didSet {
            setNeedsLayout()
        }
    }
    
    private let leftView = {
        var view = UIView()
        view.backgroundColor = UIColor.blue
        return view
    }()
    
    private let rightView = {
        var view = UIView()
        view.backgroundColor = UIColor.green
        return view
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        setupViews()
    }
    
    
    func setupViews() {
        addSubview(leftView)
        addSubview(rightView)
    }
    
    func setupLayout() {
        
    }
    
    override func layoutSubviews() {
        let containerWidth = bounds.width
        let containerHeight = bounds.height
        
        let numberOfItems: CGFloat = 2
        let itemWidth = (containerWidth - (numberOfItems + 1) * padding) / numberOfItems
        
        let itemHeight = containerHeight - 2 * padding
        
        leftView.frame = CGRect(x: padding, y: padding, width: itemWidth, height: itemHeight)
        rightView.frame = CGRect(x: 2 * padding + itemWidth, y: padding, width: itemWidth, height: itemHeight)
    }
    
}
