//
//  Floorplans.swift
//  Factory
//
//  Created by Ting Han on 2017/4/27.
//  Copyright © 2017年 Ting Han. All rights reserved.
//
//抽象工厂模式
//Car结构体需要三个对象,并且每一个对象实现的不同的协议：Floorplan, Suspension, Drivetrain.
//实现类:这是三个实现类
import Foundation

protocol Floorplan {
    var seats:Int { get }
    var enginePosition:EngineOption { get }
}

enum EngineOption : String {
    case FRONT = "Front"
    case MID = "Mid"
}

class ShortFloorplan: Floorplan {
    var seats = 2
    var enginePosition = EngineOption.MID
}

class StandardFloorplan: Floorplan {
    var seats = 4
    var enginePosition = EngineOption.FRONT
}

class LongFloorplan: Floorplan {
    var seats = 8
    var enginePosition = EngineOption.FRONT
}
