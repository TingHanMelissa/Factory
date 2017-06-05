//
//  ViewController.swift
//  Factory
//
//  Created by Ting Han on 2017/4/27.
//  Copyright © 2017年 Ting Han. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        http://www.jianshu.com/p/ffceef79c0a6
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
//       工厂方法模式下
//        let car = Car(carType: Cars.SPORTS, floor: ShortFloorplan(), suspension: RaceSuspension(), drive: RearWheelDrive())
//        car.printDetails()
        
        
//抽象工厂模式
//        变形之前
//        let factory = CarFactory.getFactory(Cars.SPORTS)
//        if (factory != nil) {
//            let car = Car(carType: Cars.SPORTS,
//                          floor: factory!.createFloorplan(),
//                          suspension: factory!.createSuspension(),
//                          drive: factory!.createDrivetrain())
//            car.printDetails()
//        }
//      
        //变形
        let car = Car(carType: Cars.SPORTS)
        car.printDetails()
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
/*
     
     工厂模式:实例化对象模式.简单工厂模式,工厂方法模式,抽象工厂模式
     简单工厂模式有工厂类,抽象类,抽象子类,工厂类通过接收参数创建并返回具体的抽象子类,不修改代码的话，是无法扩展的。工厂方法类是在简单工厂基础上将工厂类进行了抽象,每创建一个抽象子类,就创建一个工厂子类,这样可以方便扩(抽象子类继承自相同的抽象类).抽象工厂模式更加抽象,每个抽象工厂子类对应一个系列的抽象子类.(每个抽象子类继承自不同的抽象类,对应不同系列)
     */
}

