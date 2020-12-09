//
//  ViewController.swift
//  URLSessionSample
//
//  Created by Abhishek Dhiman on 08/12/20.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        getAPI()
    }
    
    func getAPI()
    {
        let employeeApiUrl = "http://demo0333988.mockable.io/Employees"

        URLSession.shared.dataTask(with: URL(string: employeeApiUrl)!) { (responseData, httpUrlResponse, error) in

            if(error == nil && responseData != nil && responseData?.count != 0)
            {
                //parse the responseData here
                let decoder = JSONDecoder()
                do {
                    //for single entity
                    //let result = try decoder.decode([EmployeeResponse].self, from: responseData!)

                    //for json with collection
                    let result = try decoder.decode([EmployeeResponse].self, from: responseData!)

                    for employee in result
                    {
                        debugPrint(employee.name)
                    }
                }
                catch let error
                {
                    debugPrint("error occured while decoding = \(error.localizedDescription)")
                }
            }

        }.resume()
    }
}

