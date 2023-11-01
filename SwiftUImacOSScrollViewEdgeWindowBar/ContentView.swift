//
//  ContentView.swift
//  SwiftUImacOSScrollViewEdgeWindowBar
//
//  Created by Simon Nickel on 01.11.23.
//

import SwiftUI

struct ContentView: View {
	
	@State private var selected: Int? = 0
	
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
			} else {
				List {
					Text("List Content")
				}
				.navigationTitle("List")
			}
		}

    }
}

#Preview {
    ContentView()
}
