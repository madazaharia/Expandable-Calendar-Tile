//
//  ContentView.swift
//  ExpandableCalendarTile
//
//  Created by Madalin Zaharia on 23.03.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var startDate = Date()
    
    var body: some View {
        VStack {
            ExpandableCalendarTile(
                minDate: Date(),
                selectedDate: $startDate,
                onTap: {}
            )
            
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
