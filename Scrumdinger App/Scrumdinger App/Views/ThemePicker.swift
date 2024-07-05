//
//  ThemePicker.swift
//  Scrumdinger App
//
//  Created by Likhitha Mandapati on 7/3/24.
//

import SwiftUI

struct ThemePicker: View {
    
    @Binding var selection : Theme
    
    var body: some View {
        Picker("Theme", selection: $selection) {
            ForEach(Theme.allCases) { theme in
                    ThemeView(theme: theme)
                      .tag(theme)
            }
        }
        .pickerStyle(.wheel)
    }
}

struct ThemePicker_Previews: PreviewProvider {
    static var previews: some View {
        ThemePicker(selection: .constant(.periwinkle))
    }
}
