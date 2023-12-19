
import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txtSearchbar: UISearchBar!
    @IBOutlet weak var tblCountry: UITableView!
    @IBOutlet weak var actInt: UIActivityIndicatorView!
    
    var vcModelView = ViewControllerModelVIew()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        txtSearchbar.delegate = self
//        navigationItem.titleView = txtSearchbar
        self.navigationItem.title = "University List"
        
        self.actInt.startAnimating()
        vcModelView.getUniversity { universities in
            self.vcModelView.universityList = universities
            self.tblCountry.reloadData()
            self.actInt.stopAnimating()
        }
        
//        Hide text of back button
        let backButton = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        self.navigationItem.backBarButtonItem = backButton
    }
    
}

extension ViewController:UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vcModelView.universityList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        let value = vcModelView.universityList[indexPath.row]
        cell.lblName.text =  value.name
        return cell
    }
    
}

extension ViewController:UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectRow = vcModelView.universityList[indexPath.row]
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let detailVC = storyboard.instantiateViewController(withIdentifier: "detailsVC") as? DetailsViewController{
            
            detailVC.universityDetails = DataShowViewModel(model: selectRow)
            detailVC.navigationItem.title = selectRow.country
            self.navigationController?.pushViewController(detailVC, animated: true)
        }
        
    }
    
}

extension ViewController : UISearchBarDelegate{
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar)
    {
        searchBar.text = ""
        callapi("")
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String)
    {
//        print(searchText)
        callapi(searchText)
    }
    
    func callapi(_ searchText: String) {
        vcModelView.CallApi(searchText: searchText) { [self] universities in
            vcModelView.universityList = universities
            self.tblCountry.reloadData()
        }
    }
}
