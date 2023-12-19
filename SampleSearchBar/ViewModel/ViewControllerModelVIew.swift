
import Foundation

class ViewControllerModelVIew 
{

    var universityList = [University]()

    //MARK: - Call All data from API

    func getUniversity(completion:@escaping([University]) ->(Void)){
        NetworkOperation.sharedInstance.getUniversities(url: "http://universities.hipolabs.com/search?" ) {  success in
            completion(success)                         // In success we got all data
        } Failure: { failure in
            print(failure)
        }
    }
    
    //MARK: - Call data when we Search

    func CallApi(searchText:String, completion:@escaping([University]) -> (Void)){
        NetworkOperation.sharedInstance.getUniversities(url: "http://universities.hipolabs.com/search?name=\(searchText)" ) { success in
            completion(success)                         // In success we got all data
        } Failure: { failure in
            print(failure)
        }
    }
}
