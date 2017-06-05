//
//  CarsParts.swift
//  Factory
//
//  Created by Ting Han on 2017/4/27.
//  Copyright © 2017年 Ting Han. All rights reserved.
//


import Foundation
enum Cars: String {
    case COMPACT = "VW Golf"
    case SPORTS = "Porsche Boxter"
    case SUV = "Cadillac Escalade"
}
struct Car {
    var carType:Cars
    var floor:Floorplan
    var suspension:Suspension
    var drive:Drivetrain
    //变形1:隐藏抽象工厂类(添加了一个init方法)
    init(carType:Cars) {
        let concreteFactory = CarFactory.getFactory(carType)
        self.floor = concreteFactory!.createFloorplan()
        self.suspension = concreteFactory!.createSuspension()
        self.drive = concreteFactory!.createDrivetrain()
        self.carType = carType
    }
    
    func printDetails() {
        print("Car type: \(carType.rawValue)")
        print("Seats: \(floor.seats)")
        print("Engine: \(floor.enginePosition.rawValue)")
        print("Suspension: \(suspension.suspensionType.rawValue)")
        print("Drive: \(drive.driveType.rawValue)")
    }
}
