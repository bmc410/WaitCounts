//
//  RestAPI.swift
//  WaitCounts
//
//  Created by Bill McCoy on 5/2/16.
//  Copyright © 2016 WellSpan Health. All rights reserved.
//

import Foundation
import Alamofire

public class RestAPI{

    public func GetOfficeWaitCounts(completion : ([Office]) -> ()) {
      
        let env = NSBundle.mainBundle().infoDictionary!["MY_API_BASE_URL_ENDPOINT"] as! String
        let URL = env +  "Waits?complete=true?types=26"
        Alamofire.request(.GET, URL).responseArray { (response: Response<[Office], NSError>) in
            switch response.result {
            case .Success:
                let offices = response.result.value!
                completion(offices)
            case .Failure( _): break
            
            }
        }
      }
    }