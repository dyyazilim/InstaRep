
//
//  DashboardViewModel.swift
//  InsRep
//
//  Created by Oğuzhan Kabul on 9.11.2022.
//

import Foundation

protocol LoginViewDataSource { }

protocol LoginViewEventSource { }

protocol LoginViewProtocol: LoginViewDataSource, LoginViewEventSource { }

final class LoginViewModel: BaseViewModel, LoginViewProtocol {
    
}

