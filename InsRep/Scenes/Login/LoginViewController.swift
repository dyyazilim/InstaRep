//
//  LoginViewController.swift
//  InsRep
//
//  Created by Oğuzhan Kabul on 10.11.2022.
//

import UIKit
import Swiftagram

/// A `class` defining a view controller capable of displaying the authentication web view.
class LoginViewController: UIViewController {
    /// The completion handler.
    var completion: ((Secret) -> Void)? {
        didSet {
            guard oldValue == nil, let completion = completion else { return }
            // Authenticate.
            DispatchQueue.main.asyncAfter(deadline: .now()) {
                // We're using `Authentication.keyhcain`, being encrypted,
                // but you can rely on different ones.
                Authenticator.transient
                    .visual(filling: self.view)
                    .authenticate()
                    .sink(receiveCompletion: { _ in }, receiveValue: completion)
                    .store(in: &self.bin)
            }
        }
    }

    /// The dispose bag.
    private var bin: Set<AnyCancellable> = []
}
