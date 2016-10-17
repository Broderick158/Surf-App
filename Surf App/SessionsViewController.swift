//
//  ViewController.swift
//  Sessions
//
//  Created by Broderick Higby on 10/6/16.
//  Copyright © 2016 Hang Ten LLC. All rights reserved.
//
import Foundation
import UIKit
import HealthKit

class ViewController: UIViewController 
{
    //Testing to see if we can get a good reading of the health data 
    
    @IBOutlet weak var workoutTypeLabel: UILabel! 
    
    
    //Constructor for HealthManager.swift
    let healthMan:HealthManager = HealthManager()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        getHealthKitPermission()
        
    }
    
    override func didReceiveMemoryWarning() 
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    //Pulling from HeatlhManager.swift
    func getHealthKitPermission()
    {
        //        var workoutType: HKQuantitySample? 
        
        healthMan.authorizeHealthKit(completion: { (success) in
            Void()
        })
        
        
        
        //Update workout label with this 
        
        
        //        func updateSessionState(_ state: String) {
        //            DispatchQueue.main.async {
        //                self.workoutSessionState.text = state
        //            }
        
        
        
        //        ({ 
        //                completion  -> Void in
        //            if( error != nil )
        //            {
        //                println("Error reading workouts: \(error.localizedDescription)")
        //                return;
        //            }
        //            else
        //            {
        //                println("Workouts read successfully!")
        //            }
        //            
        //            //Kkeep workouts and refresh tableview in main thread
        //            self.workouts = results as! [HKWorkout]
        //            dispatch_async(dispatch_get_main_queue(), { () -> Void in
        //                self.tableView.reloadData()
        //            });
        //            
        //        })     
        
        
        
        
        //Seek authorization in HealthKitManager.Swift
        //        healthMan.authorizeHealthKit()
        //       {
        //            completion  -> Void in
        //                
        //                if completion {
        //                    //Get user's Workout Type
        //                    healthMan.getWorkoutType ({ (results, error) -> Void in
        //                        if( error != nil )
        //                        {
        //                            println("Error reading workouts: \(error.localizedDescription)")
        //                            return;
        //                        }
        //                        else
        //                        {
        //                            println("Workouts read successfully!")
        //                        }
        //                else {
        //                        print (Error.self)
        //                    }
        //                    print("Permission Denied")
        //                    
        //               
        //        }
    }
    
    //Call HealthKitManager's getSample() method to get the user's workout type
    //    self.healthManager.getWorkoutType(sampleType: HKSampleType, completion: ((HKSample?, Error?) -> Void in)!)
    //    
    //    if(error != nil) {
    //    print("Error: \(error.localizedDescription)")
    //    return
    //    }
    //    var String = " "
    //    
    //    self.height = uesrHeight as? HKQuantitySample
    //    
    //    //The height is formatted to the user's locale.
    //    if let meters = self.height?.quntity.doubleValueForUnit(HKUnit.meterUnit())
    //    {
    //    let formatHeight = NSLengthFormatter()
    //    formatHeight.forPersonalHeightUse = true
    //    heightString = formatHeight.stringFromMeters(meters)
    //    }
    //    
    //    //Set the label to reflect the user's height
    //    dispatch_async(dispatch_get_main_queue(), { () -> Void in
    //    self.heightLabel.text = heightString
    //    
    //    })
    //    })
    
    
    
}


