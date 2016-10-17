//
//  AppDelegate.swift
//  Surf App
//
//  Created by Broderick Higby on 10/4/16.
//  Copyright © 2016 Hang Ten LLC. All rights reserved.
//

import UIKit
import HealthKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate 
{ 
//    var tabBarController: UITabBarController?
//    var window: UIWindow?
//    
//    //HealthKit info
//    let healthStore: HKHealthStore = HKHealthStore() 
//
//    if HKHealthStore.isHealthDataAvailable()
//    {
//        print("Health data is available")
//    
//    //Apple requires that every health type be specifically requested
//    let swimDistance = NSSet(objects: HKQuanityType.quantityTypeForIdentifier(HKQuantityTypeIdentifierDistanceSwimming))
//    let strokeCount  = NSSet(objects: HKQuanityType.quantityTypeForIdentifier(HKQuantityTypeIdentifierSwimmingStrokeCount)) 
//    
//    }else { 
//        print("Health data is not available for this platform")
//    }
//    //Requesting HealthKit authorization and initializing HKHealthStore which only needs to be done once
//    
//    
//    
//    //Added willFinish... function
//    func application(_ application: UIApplication, willFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey : Any]? = nil) -> Bool
//    {
//        return true
//    }
//    
//    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]? = nil) -> Bool {
//        // Override point for customization after application launch.
//        
//        
//        //let sessions: SessionsViewController = SessionsViewController(style .grouped)
//       // sessions.healthStore = self.healthStore
//        
//       // let sessionsNavigation: UINavigationController = UINavigationController(rootViewController: sessions);
//       // sessionsNavigation.tabBarItem.image = UIImage(named: "Sessions")
//      //  sessionsNavigation.title = "Sessions"
//        
//        self.tabBarController = UITabBarController()
//       // self.tabBarController!.viewControllers = [sessionsNavigation]
//        
//        let screen: CGRect = UIScreen.main.bounds
//        
//        self.window = UIWindow(frame: screen)
//        self.window!.backgroundColor = UIColor.black
//        self.window!.rootViewController = tabBarController
//        self.window!.makeKeyAndVisible()
//        
//        return true
//    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    
}

