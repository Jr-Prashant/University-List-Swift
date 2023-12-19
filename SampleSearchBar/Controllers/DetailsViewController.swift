
import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet weak var lblUniName: UILabel!
    @IBOutlet weak var lblCountryName: UILabel!
    @IBOutlet weak var lblAlphaTwoCode: UILabel!
    @IBOutlet weak var lblDomainName: UILabel!
    @IBOutlet weak var siteButton: UIButton!
    
    var universityDetails: DataShowViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        siteButton.layer.cornerRadius = 8.0
        self.animation()
        self.details()
        
//        Hide text of back button
        let backButton = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        self.navigationItem.backBarButtonItem = backButton
    }
    
}

extension DetailsViewController {
    
    func details() {
        lblUniName.text = universityDetails?.details.name
        lblDomainName.text = universityDetails?.details.domains[0]
        lblCountryName.text = universityDetails?.details.country
        lblAlphaTwoCode.text = universityDetails?.details.alphaTwoCode
    }
    
    @IBAction func siteButton(_ sender: UIButton) {
        
        let stroryboard = UIStoryboard(name: "Main", bundle: nil)
        if let webVC = storyboard?.instantiateViewController(withIdentifier: "webPage") as?WebsiteViewController {
            webVC.website = WebsiteViewModel(str: universityDetails?.details.webPages[0] ?? "")
            navigationController?.pushViewController(webVC, animated: true)
        }
        
    }
    
}

extension DetailsViewController {
    
    func animation() {
        // Set initial state for animation
        lblUniName.alpha = 0.0
        lblDomainName.alpha = 0.0
        lblCountryName.alpha = 0.0
        lblAlphaTwoCode.alpha = 0.0
        siteButton.alpha = 0.0
        lblUniName.transform = CGAffineTransform(translationX: 0, y: 30)
        lblDomainName.transform = CGAffineTransform(translationX: 0, y: 30)
        lblCountryName.transform = CGAffineTransform(translationX: 0, y: 30)
        lblAlphaTwoCode.transform = CGAffineTransform(translationX: 0, y: 30)
        siteButton.transform = CGAffineTransform(translationX: 0, y: 30)
        
        // Animate the appearance of the label and button
        UIView.animate(withDuration: 0.8) { [weak self] in
            self?.lblUniName.alpha = 1.0
            self?.lblUniName.transform = .identity
            self?.lblDomainName.alpha = 1.0
            self?.lblDomainName.transform = .identity
            self?.lblCountryName.alpha = 1.0
            self?.lblCountryName.transform = .identity
            self?.lblAlphaTwoCode.alpha = 1.0
            self?.lblAlphaTwoCode.transform = .identity
        }
        
        UIView.animate(withDuration: 0.8, delay: 0.4, options: [], animations: { [weak self] in
            self?.siteButton.alpha = 1.0
            self?.siteButton.transform = .identity
        }, completion: nil)
    }
    
}
