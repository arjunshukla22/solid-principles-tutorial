//
//  ViewController.swift
//  solid-principles-tutorial
//
//  Created by Arjun Shukla on 12/05/25.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            
            let vc = DashboardViewController(serviceNew: NetworkService())
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }

}

class DashboardViewController : UIViewController   {
    
    private let service : NetworkService
    
    init(serviceNew : NetworkService) {
        self.service = serviceNew
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad () {
        super.viewDidLoad()
        
        self.view.backgroundColor = .red
        
        // Fetch login details
        fetchLoginDetails()
    }
    
    func fetchLoginDetails() {
        
        service.request(endPoint:"login") { result in
            
            switch result {
            case .success(let data) :
                    debugPrint(data.name)
                    
            case .failure(let err):
                    debugPrint(err.localizedDescription)
                    
            }
        
        }
        
    }
    
    
}

