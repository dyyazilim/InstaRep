//
//  DashboardViewModel.swift
//  InsRep
//
//  Created by Oğuzhan Kabul on 9.11.2022.
//

import Foundation

protocol DashboardViewDataSource { }

protocol DashboardViewEventSource { }

protocol DashboardViewProtocol: DashboardViewDataSource, DashboardViewEventSource { }

final class DashboardViewModel: BaseViewModel, DashboardViewProtocol {
    
}
