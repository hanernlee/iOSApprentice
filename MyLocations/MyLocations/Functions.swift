//
//  Functions.swift
//  MyLocations
//
//  Created by Christopher Lee on 20/11/17.
//  Copyright © 2017 Christopher Lee. All rights reserved.
//

import Foundation

func afterDelay(_ seconds: Double, run: @escaping () -> Void) {
    DispatchQueue.main.asyncAfter(deadline: .now() + seconds, execute: run)
}

let applicationDocumentsDirectory: URL = {
   let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
    
    return paths[0]
}()

let CoreDataSaveFailedNotifications = Notification.Name(rawValue: "CoreDataSaveFailedNotification")

func fatalCoreDataError(_ error: Error) {
    print("*** Fatal Error: \(error)")
    NotificationCenter.default.post(name: CoreDataSaveFailedNotifications, object: nil)
}
