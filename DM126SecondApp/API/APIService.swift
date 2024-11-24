//
//  APIService.swift
//  DM126SecondApp
//
//  Created by user270466 on 11/23/24.
//

import Foundation
import Alamofire

struct APIService {
    func getGoals(completion: @escaping([GoalType]?, Error?)-> Void) {
        AF.request("https://private-202ace-apidm126.apiary-mock.com/goals").responseDecodable(of: [GoalType].self){
            response in
            switch response.result{
            case .success(let goals):
                completion(goals, nil)
            default: break
            }
        }
    }
    
    func addGoal(_ goal: GoalType, completion: @escaping (Bool, Error?) -> Void) {
        guard let data = try? JSONEncoder().encode(goal),
                let parameters = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] else {
            completion(false, NSError(domain: "Invalid Goal", code: 0, userInfo: nil))
            return
        }
        

        AF.request(
            "https://private-202ace-apidm126.apiary-mock.com/goals",
            method: .post,
            parameters: parameters,
            encoding: JSONEncoding.default,
            headers: ["Content-Type": "application/json"]
        ).response { response in
            switch response.result {
            case .success:
                completion(true, nil)
            case .failure(let error):
                completion(false, error)
            }
        }
    }}
