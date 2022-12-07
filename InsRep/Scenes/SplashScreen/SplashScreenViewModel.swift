import Foundation
import Swiftagram
import SwiftagramCrypto

public enum TargetRoute {
    case none, login, tabBar
}

protocol SplashScreenDataSource { }

protocol SplashScreenEventSource {
    func pushLogin()
    func pushOnBoarding()
    func pushTabbar()
}

protocol SplashScreenProtocol: SplashScreenDataSource, SplashScreenEventSource {}

final class SplashScreenViewModel: BaseViewModel, SplashScreenProtocol {
    var targetRoute: TargetRoute = .none
    
    func pushLogin() {
        targetRoute = .login
        navigateToTarget(targetRoute)
    }
    
    func pushOnBoarding() {
       // targetRoute = .onBoarding
        navigateToTarget(targetRoute)
    }
    
    func pushTabbar() {
        targetRoute = .tabBar
        navigateToTarget(targetRoute)
    }
    
    func navigateToTarget(_ target: TargetRoute) {
        switch target {
            case .tabBar:
            return
//            case .onBoarding:
//                router.pushOnBoarding()
//            return
            default: return
        }
    }
}

