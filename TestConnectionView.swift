import SwiftUI

// MyDataModel.swift
import Foundation

// TestConnectionView.swift
struct TestConnectionView: View {

    var body: some View {
        VStack {
            Button("Fetch Data") {
                fetchDataFromAPI()
            }

            if let data = responseData {
                VStack(alignment: .leading) {
                    Text("Name: \(data.name)")
                    Text("Level: \(data.level)")
                    Text("Address: \(data.address)")
                    Text("Date: \(data.itemdate)")
                }
            }

            if let error = errorDescription {
                Text("Error: \(error)")
                    .foregroundColor(.red)
            }

            Text("Raw JSON Response:")
            ScrollView {
                Text(rawJSONResponse)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
        }
    }

    
}

// TestConnectionView_Previews.swift
struct TestConnectionView_Previews: PreviewProvider {
    static var previews: some View {
        TestConnectionView()
    }
}
