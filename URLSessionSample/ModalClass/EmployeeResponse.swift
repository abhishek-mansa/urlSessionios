//
//  EmployeeResponse.swift
//  URLSessionSample
//
//  Created by Abhishek Dhiman on 08/12/20.
//

import Foundation

class EmployeeResponse : Decodable
{
    let employeeId, depid: Int
    let salary: Double
    let name, role, joining, workPhone: String


    enum CodingKeys: String, CodingKey {
        case employeeId = "id" // the api is retuning the key as id and you have employeeId here, so in such
        // situations you can use coding keys, because they help you to do the mapping
        // between the api response and your response model
        case depid = "dep_id"
        case name, role
        case joining = "joining_date" // same goes over here, the response contains the key as joining_date
        // and your model has the property as joining
        case salary, workPhone
    }
}
