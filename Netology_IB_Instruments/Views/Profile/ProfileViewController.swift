//
//  ProfileViewController.swift
//  Netology_IB_Instruments
//
//  Created by Vladimir Beliakov on 29.01.2023.
//

import UIKit

class ProfileViewController: UIViewController {
    
    var viewForLayout = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let newView = Bundle.main.loadNibNamed(Views.profileView, owner: nil)?.first as? ProfileView else { return }
        newView.avatarOutlet.image = Photos.avatar
        newView.NameOutlet.text = "Vladimir"
        newView.cityOutlet.text = "Kaluga"
        newView.dateOfBirthOutlet.text = "16.05.2010"
        viewForLayout = newView
        view.addSubview(viewForLayout)
    }
    
    override func viewWillLayoutSubviews() {
        viewForLayout.frame = view.bounds.inset(by: .init(top: view.safeAreaInsets.top + 10, left: view.safeAreaInsets.left + 10, bottom: view.safeAreaInsets.bottom + 10, right: view.safeAreaInsets.right + 10))
    }
}
