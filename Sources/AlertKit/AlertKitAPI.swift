import UIKit

public enum AlertKitAPI {
    
    public static func present(view: AlertViewProtocol, completion: @escaping ()->Void = {}) {
        guard let window = UIApplication.shared.windows.filter({ $0.isKeyWindow }).first else { return }
        view.present(on: window, completion: completion)
    }
    
    public static func present(title: String? = nil, subtitle: String? = nil, icon: AlertIcon? = nil, haptic: AlertHaptic? = nil) {
        guard let window = UIApplication.shared.windows.filter({ $0.isKeyWindow }).first else { return }
        let view = AlertKitView(title: title, subtitle: subtitle, icon: icon)
        view.haptic = haptic
        view.present(on: window)
    }
}
