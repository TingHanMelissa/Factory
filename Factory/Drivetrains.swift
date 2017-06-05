//
//  Drivetrains.swift
//  Factory
//
//  Created by Ting Han on 2017/4/27.
//  Copyright © 2017年 Ting Han. All rights reserved.
//

import Foundation
//Car结构体需要三个对象,并且每一个对象实现的不同的协议：Floorplan, Suspension, Drivetrain.
protocol Drivetrain {
    var driveType:DriveOption { get }
}
enum DriveOption : String {
    case FRONT = "Front"
    case REAR = "Rear"
    case ALL = "4WD"
}

class FrontWheelDrive : Drivetrain {
    var driveType = DriveOption.FRONT
}

class RearWheelDrive : Drivetrain {
    var driveType = DriveOption.REAR
}

class AllWheelDrive : Drivetrain {
    var driveType = DriveOption.ALL
}




