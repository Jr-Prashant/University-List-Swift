
import Foundation
import Alamofire

// http://universities.hipolabs.com/search?

class NetworkOperation:NSObject {
    
    static var sharedInstance = NetworkOperation()
    
    func getUniversities(  url :String, success SuccessBlock: @escaping ([University]) ->Void,Failure FailureBlock: @escaping (NSDictionary)->Void){
        guard let objUrl = URL(string: url) else { return }
        let headers: HTTPHeaders = ["Content-Type": "application/json"]
        AF.request(url,method: .get,parameters: nil,encoding: URLEncoding.httpBody,headers: headers).responseData { (response) in
            switch response.result {
            case .success(let data):
                do {
//                    let asJSON = try JSONSerialization.jsonObject(with: data)
//                    print(asJSON)
                    // Decode
                    let jsonDecoder = JSONDecoder()
                    let secondDog = try jsonDecoder.decode([University].self, from: data)
//                    SuccessBlock(asJSON as! NSArray)
                    SuccessBlock(secondDog)
                    // Handle as previously success
                } catch {
                    print(error)
                    
                }
            case .failure(let error):
                print(error)
                // Handle as previously error
            }
        }
        
    }
    
    
}
