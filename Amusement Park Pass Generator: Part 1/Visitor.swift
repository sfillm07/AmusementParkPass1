//
//  Visitor.swift
//  Amusement Park Pass Generator: Part 1
//
//  Created by Sean Fillmore on 11/19/16.
//  Copyright © 2016 Sean Fillmore. All rights reserved.
//

import Foundation

protocol Personal {
    var firstName: String { get }
    var lastName: String { get }
    var address: String { get }
    var city: String { get }
    var state: String { get }
    var zipCode: String { get }
    
    init(firstName: String, lastName: String, address: String, city: String, state: String, zipCode: String)
}

protocol Discount {
    var foodDisc: Float { get }
    var merchDisc: Float { get }
}

protocol PublicAccess {
    var amusementAccess: Bool { get }
    var rideAccess: Bool { get }
    var skipLineAccess: Bool { get }
}

protocol RestrictedAccess {
    var kitchenAccess: Bool { get }
    var rideControlAccess: Bool { get }
    var maintenanceAccess: Bool { get }
    var officeAccess: Bool { get }
}

protocol Employee: Personal, PublicAccess, RestrictedAccess, Discount {
}

protocol ChildVisitor {
    var dob: String { get }
}

protocol Visitor: PublicAccess, RestrictedAccess {}

struct ClassicVisitor: Visitor {
    
    var amusementAccess = true
    var rideAccess = true
    var skipLineAccess = false
    
    var kitchenAccess = false
    var rideControlAccess = false
    var maintenanceAccess = false
    var officeAccess = false
    
}

struct VIPVisitor: PublicAccess, RestrictedAccess, Discount {
    
    var amusementAccess = true
    var rideAccess = true
    var skipLineAccess = false
    
    var kitchenAccess = false
    var rideControlAccess = false
    var maintenanceAccess = false
    var officeAccess = false
    
    var foodDisc: Float = 15.0
    var merchDisc: Float = 25.0
}

struct Child: ChildVisitor, Visitor {

    init(dob: String) {
        self.dob = dob
    }
    
    var dob: String
    
    var amusementAccess = true
    var rideAccess = true
    var skipLineAccess = false
    
    var kitchenAccess = false
    var rideControlAccess = false
    var maintenanceAccess = false
    var officeAccess = false
    
}

struct FoodService: Employee {
    
    init(firstName: String, lastName: String, address: String, city: String, state: String, zipCode: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.address = address
        self.city = city
        self.state = state
        self.zipCode = zipCode
    }

    var firstName: String
    var lastName: String
    var address: String
    var city: String
    var state: String
    var zipCode: String
    
    var amusementAccess = true
    var rideAccess = true
    var skipLineAccess = false
    
    var kitchenAccess = true
    var rideControlAccess = false
    var maintenanceAccess = false
    var officeAccess = false
    
    var foodDisc: Float = 15.0
    var merchDisc: Float = 25.0
}

struct RideService: Employee {
    
    init(firstName: String, lastName: String, address: String, city: String, state: String, zipCode: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.address = address
        self.city = city
        self.state = state
        self.zipCode = zipCode
    }
    
    var firstName: String
    var lastName: String
    var address: String
    var city: String
    var state: String
    var zipCode: String
    
    var amusementAccess = true
    var rideAccess = true
    var skipLineAccess = false
    
    var kitchenAccess = false
    var rideControlAccess = true
    var maintenanceAccess = false
    var officeAccess = false
    
    var foodDisc: Float = 15.0
    var merchDisc: Float = 25.0
}

struct Maintenance: Employee {
    
    init(firstName: String, lastName: String, address: String, city: String, state: String, zipCode: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.address = address
        self.city = city
        self.state = state
        self.zipCode = zipCode
    }
    
    var firstName: String
    var lastName: String
    var address: String
    var city: String
    var state: String
    var zipCode: String
    
    var amusementAccess = true
    var rideAccess = true
    var skipLineAccess = false
    
    var kitchenAccess = true
    var rideControlAccess = true
    var maintenanceAccess = true
    var officeAccess = false
    
    var foodDisc: Float = 15.0
    var merchDisc: Float = 25.0
}

struct Manager: Employee {
    
    init(firstName: String, lastName: String, address: String, city: String, state: String, zipCode: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.address = address
        self.city = city
        self.state = state
        self.zipCode = zipCode
    }
    
    var firstName: String
    var lastName: String
    var address: String
    var city: String
    var state: String
    var zipCode: String
    
    var amusementAccess = true
    var rideAccess = true
    var skipLineAccess = false
    
    var kitchenAccess = true
    var rideControlAccess = true
    var maintenanceAccess = true
    var officeAccess = true
    
    var foodDisc: Float = 25.0
    var merchDisc: Float = 25.0
}

let john = Manager(firstName: "John", lastName: "Smith", address: "123 Main St.", city: "Camarillo", state: "CA", zipCode: "91234")
let mary = FoodService(firstName: "Mary", lastName: "Jones", address: "459 High St.", city: "", state: "CA", zipCode: "90867")
let bill = RideService(firstName: "Bill", lastName: "Richards", address: "187 Ball Ct.", city: "Thousand Oaks", state: "CA", zipCode: "")
let sean = Maintenance(firstName: "Sean", lastName: "Fillmore", address: "211 Bank St.", city: "Simi Valley", state: "", zipCode: "93063")


























