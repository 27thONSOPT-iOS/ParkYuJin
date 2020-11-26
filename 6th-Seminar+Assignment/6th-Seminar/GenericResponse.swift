//
//  GenericResponse.swift
//  6th-Seminar
//
//  Created by ✨EUGENE✨ on 2020/11/21.
//

import Foundation

struct GenericResponse<T: Codable>: Codable { //Codable: 프로토콜. json 타입으로 인코딩 가능
    var status: Int
    var success: Bool
    var message: String
    var data: T? // 타입을 지정하지 않고, response로 들어온 데이터 타입에 따른다.
    
    enum CodingKeys: String, CodingKey {
        //json 데이터는 키, 값으로 이루어짐
        // 맵핑?
        case status = "status"
        case success = "success"
        case message = "message"
        case data = "data"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        status = (try? values.decode(Int.self, forKey: .status)) ?? -1
        success = (try? values.decode(Bool.self, forKey: .success)) ?? false
        message = (try? values.decode(String.self, forKey: .message)) ?? ""
        data = (try? values.decode(T.self, forKey: .data)) ?? nil
    }
    
}
