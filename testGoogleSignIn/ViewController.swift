//
//  ViewController.swift
//  testGoogleSignIn
//
//  Created by HoangDucAnh on 15/02/2023.
//

import UIKit
import GoogleSignIn

class ViewController: UIViewController {
    
    
// 834966504603-on77ged3l1iteos8vpg161tcm4e20nkk.apps.googleusercontent.com
    // Create Google Sign In configuration object.
    let config = GIDConfiguration(clientID: "834966504603-on77ged3l1iteos8vpg161tcm4e20nkk.apps.googleusercontent.com")

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
//com.googleusercontent.apps.834966504603-on77ged3l1iteos8vpg161tcm4e20nkk
    @IBAction func loginButton(_ sender: UIButton) {
        GIDSignIn.sharedInstance.configuration = config
        GIDSignIn.sharedInstance.signIn(withPresenting: self) { signInResult, error in
            guard error == nil else {
                print(error!)
                return }

            // If sign in succeeded, display the app's main content View.
            guard let signInResult = signInResult else { return }

                let user = signInResult.user
                let userId1 = user.userID
                let emailAddress = user.profile?.email

                let fullName = user.profile?.name
                let givenName = user.profile?.givenName
                let familyName = user.profile?.familyName
            let idtoken1 = user.idToken
            print("\(emailAddress!) la email , \(userId1), idtoken la : \(idtoken1)" )
            // 105186205562103628099
            // GIDToken: 0x60000179f660
          }
        
    }
    
}

