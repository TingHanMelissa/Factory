//
//  Suspension.swift
//  Factory
//
//  Created by Ting Han on 2017/4/27.
//  Copyright © 2017年 Ting Han. All rights reserved.
//

import Foundation
//Car结构体需要三个对象,并且每一个对象实现的不同的协议：Floorplan, Suspension, Drivetrain.
protocol Suspension {
    var suspensionType:SuspensionOption{ get }
}

enum SuspensionOption : String {
    case STANDARD = "Standard"
    case SPORTS = "Firm"
    case SOFT = "Soft"
}


//class RoadSuspension : Suspension {
//    var suspensionType = SuspensionOption.STANDARD
//}
//
//class OffRoadSuspension : Suspension {
//    var suspensionType = SuspensionOption.SOFT
//}
//
//class RaceSuspension : Suspension {
//    var suspensionType = SuspensionOption.SPORTS
//}


//为实现类应用原型模式
//最重要的是为实现类去应用原型模式而非具体工厂类。
class RoadSuspension :NSObject, NSCopying,Suspension {
    
    var suspensionType = SuspensionOption.STANDARD
    
    static let sharedInstance = RoadSuspension()
    
    func copy(with zone: NSZone? = nil) -> Any {
          return RoadSuspension()
    }
    class func getInstance() -> Suspension {
        return sharedInstance.copy() as! Suspension
        
    }
    
}

class OffRoadSuspension :NSObject, NSCopying, Suspension {
    
    var suspensionType = SuspensionOption.SOFT
    
    static let sharedInstance = OffRoadSuspension()

    func copy(with zone: NSZone? = nil) -> Any {
         return OffRoadSuspension()
    }
    class func getInstance() -> Suspension {
        return sharedInstance.copy() as! Suspension
    }
}

class RaceSuspension :NSObject, NSCopying,  Suspension {
    
    var suspensionType = SuspensionOption.SPORTS
    
    static let sharedInstance = RaceSuspension()
    func copy(with zone: NSZone? = nil) -> Any {
          return RaceSuspension()
    }
    class func getInstance() -> Suspension {
        return sharedInstance.copy() as! Suspension
    }
}

