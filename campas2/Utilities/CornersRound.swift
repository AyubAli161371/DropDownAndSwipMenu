//
//  RoundCorners.swift
//  Brushed
//
//  Created by Ahmed on 13/11/2020.
//  Copyright © 2020 MtechSoft. All rights reserved.
//
import Foundation
import UIKit
extension UIView{

    func fourCornor(){
        self.clipsToBounds = true
        self.layer.cornerRadius = 5
        self.layer.maskedCorners = [.layerMinXMinYCorner,.layerMinXMaxYCorner, .layerMaxXMinYCorner,.layerMaxXMaxYCorner]
    }
    func TopTwoCornor(){
        self.clipsToBounds = true
        self.layer.cornerRadius = 10
        self.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
    }
    
    func topTwoCornor(){
        self.clipsToBounds = true
        self.layer.cornerRadius = 20
        self.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
    }
    func TOPTwoCornor(){
        self.clipsToBounds = true
        self.layer.cornerRadius = 35
        self.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
    }
    func BottomTwoCornor(){
        self.clipsToBounds = true
        self.layer.cornerRadius = 10
        self.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
    }
    func ExceptBottomLeft(){
        self.clipsToBounds = true
        self.layer.cornerRadius = 20
        self.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner,.layerMaxXMaxYCorner]
    }
    func ExceptBottomRight(){
        self.clipsToBounds = true
        self.layer.cornerRadius = 20
        self.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner,.layerMinXMaxYCorner]
    }
    func TopRightBottomRight(){
        self.clipsToBounds = true
        self.layer.cornerRadius = 11
        self.layer.maskedCorners = [.layerMaxXMinYCorner,.layerMaxXMaxYCorner]
    }
}



// MARK: CORNERS
//layerMaxXMaxYCorner - bottom right corner
//layerMaxXMinYCorner - top right corner
//layerMinXMaxYCorner - bottom left corner
//layerMinXMinYCorner - top left corner
