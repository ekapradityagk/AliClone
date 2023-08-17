import SwiftUI

struct MiniThumbnailView: View {
    @ObservedObject var restAPIClient = clsRestAPIClient()
    
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(restAPIClient.Response_GetSimpleItemDataValue.data ?? []) { item in
                    VStack{
                        VStack{
                            
                        }
                        .frame(width: 160,height: 160)
                        .background(.red)
                        .cornerRadius(15)
                        
                        HStack{
                            VStack(alignment: .leading){
                                Text(item.itemName ?? "")
                                    .font(.headline)
                                Text("Current Price: \(item.price ?? "")")
                                Text("Before Price: \(item.afterPrice ?? "")")
                                Text("Additional Info: \(item.additionalInfo ?? "")")
                            }
                            
                            Spacer()
                        }
                    }
                    .frame(width: 160,height: 240)
                    .padding(.horizontal,5)
                }
            }
        }
        .onAppear(perform: loadData)
    }
    
    func loadData() {
        print("Loading data...")
        restAPIClient.GetSimpleItemData { response in
            print("Data loaded:", response)
            print("Data count:", restAPIClient.Response_GetSimpleItemDataValue.data?.count ?? 0)
        }
    }
}

struct MiniThumbnailView_Previews: PreviewProvider {
    static var previews: some View {
        MiniThumbnailView()
    }
}
