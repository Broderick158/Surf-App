import Foundation
import HealthKit

class HealthManager {
    //Requesting HealthKit authorization and initializing HKHealthStore which only needs to be done once
    private let healthStore = HKHealthStore()
    
    class var sharedInstance: HealthManager {
        struct Singleton {
            static let instance = HealthManager()
        }
        return Singleton.instance
    }
    
    private var isAuthorized: Bool? = false
    
    //Allowing authorization to read Swimming Distance, Stroke Count, Workout Type, Active Energy Burned, and Heart Rate
    func authorizeHealthKit(completion: ((_ success: Bool) -> Void)!) {
        let readableTypes: Set<HKSampleType> = [HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier.distanceSwimming)!, HKWorkoutType.workoutType(), HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier.swimmingStrokeCount)!, HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier.activeEnergyBurned)!, HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier.heartRate)!]
//        let writableTypes: Set<HKSampleType> = [HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier.distanceSwimming)!, HKWorkoutType.workoutType(), HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier.swimmingStrokeCount)!, HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier.activeEnergyBurned)!, HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier.heartRate)!]
        guard HKHealthStore.isHealthDataAvailable() else {
            completion(false)
            return
        }
        
        // Request Authorization
        healthStore.requestAuthorization(toShare: nil, read: readableTypes) { (success, error) in
            
            if success {
                completion(true)
                self.isAuthorized = true
            } else {
                completion(false)
                self.isAuthorized = false
                print("Health data is not available for this device. \(error?.localizedDescription)")
            }
        }
    }//End authorizeHealthKit function
    
    //Accessor methods for data to be read from healthKit ( Workout Type, Active Energy Burned, Heart Rate, Swimming Distance, Stroke Count)
    func getWorkoutType(sampleType: HKSampleType, completion: ((HKSample?, Error?) -> Void)!)
    {
        
        //Predicate for the workout type to define the time parameters
        let distantPastWorkout = Date.distantPast
        
        //reference for current date
        let currentDate = NSDate() as Date
        
        //Add a predicate to only allow workouts from the distantPast (most recent)
        let lastWorkoutTypePredicate = HKQuery.predicateForSamples(withStart: distantPastWorkout, end: currentDate, options: [])
       
        
        //Get the single, most recent workoutType
        
        let workoutTypeQuery = HKSampleQuery(sampleType: sampleType, predicate: lastWorkoutTypePredicate, limit: 1, sortDescriptors: nil) 
        {
            workoutTypeQuery, results, error in
            
//            guard let samples = results as? [HKQuantitySample] else {
//                fatalError("An error occured fetching the user's workout type. The error was: \(error?.localizedDescription)");
//            }
//          `  
//            for sample in samples {
//                
//                guard let workoutTypeName =
//                    sample.metadata?[HKMetadataKey] as? String else {
//                        // if the metadata doesn't record the workout type, just skip it.
//                        break
//                }
//                
//                
//            }
        }
        
        healthStore.execute(workoutTypeQuery)
    }//EndGetWorkoutType
            
            

        

    
    
    
} //End Class HealthManager
