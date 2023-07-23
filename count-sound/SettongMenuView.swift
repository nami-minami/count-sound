//
//  setting.swift
//  count-sound
//
//  Created by 南奈弥 on 2023/07/04.
//

import SwiftUI

struct SettingMenuView: View {
    var body: some View {
        Form {
            NavigationLink(destination: SoundSettingView()) {
                Text("SoundSettings")
            }
        }
    }
}

struct SettingMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SettingMenuView()
    }
}
