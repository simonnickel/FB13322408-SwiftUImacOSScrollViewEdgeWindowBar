//
//  ContentView.swift
//  SwiftUImacOSScrollViewEdgeWindowBar
//
//  Created by Simon Nickel on 01.11.23.
//

import SwiftUI

struct ContentView: View {
	
	@State private var selected: Int? = 1
	
    var body: some View {
		NavigationSplitView {
			List(selection: $selected) {
				Label("ScrollView", systemImage: "rectangle").tag(0)
				Label("List", systemImage: "circle").tag(1)
			}
		} detail: {
			if selected == 0 {
				ScrollView {
					Text("Scroll View Content")
						.frame(maxWidth: .infinity)
				}
				.navigationTitle("ScrollView")
				// Does only apply on iPadOS
//				 .toolbarBackground(.hidden, for: .automatic)
			} else {
				List {
					Text("List Content")
				}
				.navigationTitle("List")
				// Does only apply on iPadOS
//				 .toolbarBackground(.visible, for: .automatic)
				// This does force visible windowBar on macOS, but not on iOS.
//				.scrollContentBackground(.hidden)
			}
		}

    }
}

#Preview {
    ContentView()
}
