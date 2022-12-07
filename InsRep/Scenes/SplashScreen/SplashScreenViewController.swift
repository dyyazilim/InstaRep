import UIKit
import Lottie
import Swiftagram
import SwiftagramCrypto

final class SplashScreenViewController: BaseViewController<SplashScreenViewModel> {
    
    let animationView: AnimationView = {
        let animationView = AnimationView()
        animationView.loopMode = .playOnce
        animationView.contentMode = .scaleAspectFit
        animationView.animationSpeed = 2
        return animationView
    }()
    
    override func setupViews() {
        super.setupViews()
        view.addSubview(animationView)
    }
    
    override func setupLayouts() {
        super.setupLayouts()
        animationView.height(UIScreen.main.bounds.width/3*2)
        animationView.width(UIScreen.main.bounds.width/3*2)
        animationView.centerInSuperview()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getAnimation()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        playAnimation()
    }
    
    func getAnimation() {
        animationView.animation = Animation.named("instagram_lottie")! 
    }
    
    public func playAnimation() {
        animationView.play()
        animationView.play(completion: { finished in
            guard finished else { return }
            self.getNextController()
        })
    }
}

extension SplashScreenViewController {
    private func getNextController() {
//        guard DefaultsKey.didSeeBoarding.has else {
//            viewModel.pushOnBoarding()
//            return
//        }
        
//        guard Defaults.token.has else {
//            viewModel.pushLogin()
//            return
//        }
      //  viewModel.pushLogin()
//        viewModel.pushTabbar()
        self.dismiss(animated: true)
        let loginViewController = LoginViewController()
        loginViewController.completion = { secret in
            var bin: Set<AnyCancellable> = []

            // We're using a random endpoint to demonstrate
            // how `URLSession` is exposed in code.
            Endpoint.user(secret.identifier)
                .unlock(with: secret)
                .session(.instagram)    // `URLSession.instagram`
                .sink(receiveCompletion: { _ in }, receiveValue: { print($0.user?.username, "asdsafsd") })
                .store(in: &bin)
            
            let tabbar = TabBarController()
            tabbar.modalPresentationStyle = .fullScreen
            loginViewController.present(tabbar, animated: true)
        }
        loginViewController.modalPresentationStyle = .fullScreen
        self.present(loginViewController, animated: true)
    }
}
