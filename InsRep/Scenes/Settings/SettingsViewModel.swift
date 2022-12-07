//
//  DashboardViewModel.swift
//  InsRep
//
//  Created by Oğuzhan Kabul on 9.11.2022.
//

import Foundation

protocol SettingsViewDataSource { }

protocol SettingsViewEventSource { }

protocol SettingsViewProtocol: SettingsViewDataSource, SettingsViewEventSource { }

final class SettingsViewModel: BaseViewModel, SettingsViewProtocol {
    
}
