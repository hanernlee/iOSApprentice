//
//  Location+CoreDataProperties.swift
//  MyLocations
//
//  Created by Christopher Lee on 20/11/17.
//  Copyright © 2017 Christopher Lee. All rights reserved.
//
//

import Foundation
import CoreData
import CoreLocation

extension Location {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Location> {
        return NSFetchRequest<Location>(entityName: "Location")
    }

    @NSManaged public var latitude: Double
    @NSManaged public var longitude: Double
    @NSManaged public var date: Date?
    @NSManaged public var locationDescription: String
    @NSManaged public var category: String
    @NSManaged public var placemark: CLPlacemark?

}