//
//  Concrete.swift
//  Factory
//
//  Created by Ting Han on 2017/4/27.
//  Copyright © 2017年 Ting Han. All rights reserved.
//

//具体工厂
//变形二:具体工厂实现类,单例化
import Foundation

class CompactCarFactory : CarFactory {
    private override init(){}
    
    static let sharedInstance = CompactCarFactory()
    
    override func createFloorplan() -> Floorplan {
        return StandardFloorplan()
    }
    override func createSuspension() -> Suspension {
        return RoadSuspension.sharedInstance
    }
    override func createDrivetrain() -> Drivetrain {
        return FrontWheelDrive()
    }
}

class SportsCarFactory : CarFactory {
    private override init(){}
    
    static let sharedInstance = SportsCarFactory()

    override func createFloorplan() -> Floorplan {
        return ShortFloorplan()
    }
    override func createSuspension() -> Suspension {
        return RaceSuspension.sharedInstance
    }
    override func createDrivetrain() -> Drivetrain {
        return AllWheelDrive()
    }
}
class SUVCarFactory : CarFactory {
    
    private override init(){}
    static let sharedInstance = SUVCarFactory()

    override func createFloorplan() -> Floorplan {
        return LongFloorplan()
    }
    override func createSuspension() -> Suspension {
        return OffRoadSuspension.sharedInstance
    }
    override func createDrivetrain() -> Drivetrain {
        return AllWheelDrive()
    }
}
