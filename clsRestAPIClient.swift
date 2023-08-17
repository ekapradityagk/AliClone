//
//  clsRestAPIClient.swift
//  AliClone
//
//  Created by Aisa Utomo on 04/08/23.
//

import UIKit
import Foundation

class clsRestAPIClient: NSObject, ObservableObject{

    @Published var Response_GetSimpleItemDataValue = Response_ItemSimpleDataModel(status: "", data: [])
    
    func GetSimpleItemData(returnHandler : @escaping (Response_ItemSimpleDataModel) -> Void)
    {
        let url_string : String = "https://run.mocky.io/v3/fb658f63-c57b-4650-af12-79b658ad25fc"
        
        print("Get simple item detail")
        print("URL:", url_string)

        guard let url = URL(string: url_string) else
        {
            self.Response_GetSimpleItemDataValue.status = "NOK"
            print("Error: Invalid URL")
            
            return
        }

        var request = URLRequest(url: url)
        
        
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpMethod = "GET"


        let session = URLSession(configuration: URLSessionConfiguration.default, delegate: self, delegateQueue: nil)
                
        let task = session.dataTask(with: request) { (data, response, error) in
            print("URL session started")
            guard
                let data = data,
                let response = response as? HTTPURLResponse,
                error == nil
            else {
                print("Error:", error ?? URLError(.badServerResponse))
                return
            }
            print("Response status code:", response.statusCode)
            
            guard (200 ... 299) ~= response.statusCode else {
                print("Error: HTTP status code is not 2xx")
                print("Response:", response)
                return
            }
            
            var result: Response_ItemSimpleDataModel?

            do {
                if let singleItem = try? JSONDecoder().decode(Response_ItemSimpleDataModelData.self, from: data) {
                    result = Response_ItemSimpleDataModel(status: "OK", data: [singleItem])
                } else {
                    result = try JSONDecoder().decode(Response_ItemSimpleDataModel.self, from: data)
                }
                
                print("Result:", result ?? "nil")
                
            } catch {
                print("Error:", error)

                if let responseString = String(data: data, encoding: .utf8) {
                    print("Response string:", responseString)
                    
                } else {
                    print("Error: Unable to parse response as string")
                }
            }
            guard let json = result else
            {
                return
            }

            DispatchQueue.main.async
            {
                self.Response_GetSimpleItemDataValue = json
                returnHandler(json)
            }
        }
        task.resume()
    }

}

extension clsRestAPIClient: URLSessionDelegate {
    
    public func urlSession(_ session: URLSession, didReceive challenge: URLAuthenticationChallenge, completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void) {
        //Trust the certificate even if not valid
        let urlCredential = URLCredential(trust: challenge.protectionSpace.serverTrust!)
        
        completionHandler(.useCredential, urlCredential)
    }
    
}
