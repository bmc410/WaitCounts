//
//  Offices.swift
//  WaitCounts
//
//  Created by Bill McCoy on 5/2/16.
//  Copyright © 2016 WellSpan Health. All rights reserved.
//

import ObjectMapper
import Alamofire
import AlamofireObjectMapper

    public class Office: Mappable {
        var Name: String?
        var WaitCount: Int?
        var Hours: String?
        var Address: String?
        var TypeLoc: Int?
        
        public required init?(_ map: Map){
            
        }
        
        public func mapping(map: Map) {
            Name <- map["Name"]
            WaitCount <- map["WaitCount"]
            Hours <- map["Hours"]
            Address <- map["Address"]
            TypeLoc <- map["TypeLoc"]
            
        }
    }

