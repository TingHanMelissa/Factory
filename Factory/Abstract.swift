//
//  Abstract.swift
//  Factory
//
//  Created by Ting Han on 2017/4/27.
//  Copyright © 2017年 Ting Han. All rights reserved.
//

//抽象工厂模式
//抽象工厂


import Foundation
class CarFactory {
    func createFloorplan() -> Floorplan {
        fatalError("Not implemented")
    }
    
    func createSuspension() -> Suspension {
        fatalError("Not implemented")
    }
    
    func createDrivetrain() -> Drivetrain {
        fatalError("Not implemented")
    }
    
//    final class func getFactory(_ car:Cars) -> CarFactory? {
//        var factory:CarFactory?
//        switch (car) {
//        case .COMPACT:
//            factory = CompactCarFactory()
//        case .SPORTS:
//            factory = SportsCarFactory()
//        case .SUV:
//            factory = SUVCarFactory()
//        }
//        return factory
//    }
    //变形二:具体工厂实现类单例化
    final class func getFactory(_ car:Cars) -> CarFactory? {
        var factory:CarFactory
        switch (car) {
        case .COMPACT:
            factory = CompactCarFactory.sharedInstance
        case .SPORTS:
            factory = SportsCarFactory.sharedInstance
        case .SUV:
            factory = SUVCarFactory.sharedInstance
        }
        return factory
    }
    
}





