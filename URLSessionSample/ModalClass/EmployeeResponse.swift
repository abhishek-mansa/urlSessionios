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
}
