//
//  translationAppApp.swift
//  translationApp
//
//  Created by Atsushi on 2022/07/05.
//

import SwiftUI
import NCMB

@main
struct translationAppApp: App {
    init() {
        let applicationKey = KeyManager().getValue(key: "ApplicationKey") as! String
        let clientKey = KeyManager().getValue(key: "ClientKey") as! String
        // APIキーの設定とSDK初期化
        NCMB.initialize(applicationKey: applicationKey, clientKey: clientKey)
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
