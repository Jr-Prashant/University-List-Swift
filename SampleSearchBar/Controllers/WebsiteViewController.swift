

import UIKit
import WebKit

class WebsiteViewController: UIViewController {
    
    @IBOutlet weak var webPage: WKWebView!
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    
    var website: WebsiteViewModel?
    
    var timer: Timer?
    override func viewDidLoad()
    {
        super.viewDidLoad()
        loadWebPage(website?.webLink ?? "")
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(loading), userInfo: nil, repeats: true)
        
        self.navigationItem.title = "Welcome in my University!"
    }
    
}

extension WebsiteViewController: WKNavigationDelegate {
    func loadWebPage(_ urlString: String){
        webPage.navigationDelegate?=self
//        print(urlString)
        guard let safeUrl = URL(string: urlString) else { return }
            let request = URLRequest(url: safeUrl)
            webPage.load(request)
        
    }
    
    @objc func loading(){
        if (self.webPage.isLoading) {
            self.indicator.startAnimating()
        } else{
            self.indicator.stopAnimating()
        }
    }
    
}
