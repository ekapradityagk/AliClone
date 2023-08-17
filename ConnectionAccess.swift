//
//  ConnectionAccess.swift
//  AliClone
//
//  Created by Aisa Utomo on 04/08/23.
//

import Foundation

var rawJSONResponse: String = ""
var errorDescription: String?

var responseData: TestDataModel?

func fetchDataFromAPI() {
    guard let url = URL(string: "https://run.mocky.io/v3/4215f88d-d944-4c88-a70d-fb556d1be05d") else {
        print("Invalid URL")
        return
    }

    URLSession.shared.dataTask(with: url) { data, response, error in
        if let error = error {
            print("Error: \(error.localizedDescription)")
            errorDescription = error.localizedDescription
            return
        }

        if let data = data {
            if let jsonString = String(data: data, encoding: .utf8) {
                rawJSONResponse = jsonString
            }

            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase // For snake_case keys in JSON
                var responseData = try decoder.decode(TestDataModel.self, from: data)
                DispatchQueue.main.async {
                    responseData = responseData
                    errorDescription = nil // Reset the error description if decoding is successful.
                }
            } catch let decodingError {
                print("Error decoding JSON: \(decodingError.localizedDescription)")
                errorDescription = decodingError.localizedDescription
            }
        }
    }.resume()
}



