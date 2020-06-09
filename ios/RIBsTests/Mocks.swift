//
//  Copyright (c) 2017. Uber Technologies
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

import RIBs
import RxRelay
import RxSwift
import UIKit

class WindowMock: UIWindow {
    
    override var isKeyWindow: Bool {
        return internalIsKeyWindow
    }
    
    override var rootViewController: UIViewController? {
        get { return internalRootViewController }
        set { internalRootViewController = newValue }
    }
    
    override func makeKeyAndVisible() {
        internalIsKeyWindow = true
    }
    
    // MARK: - Private
    
    private var internalIsKeyWindow: Bool = false
    private var internalRootViewController: UIViewController?
}

class ViewControllableMock: ViewControllable {
    let uiviewController = UIViewController(nibName: nil, bundle: nil)
}
