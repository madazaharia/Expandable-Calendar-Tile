//
//  ExpandableCalendarTile.swift
//  ExpandableCalendarTile
//
//  Created by Madalin Zaharia on 23.03.2023.
//

import SwiftUI

struct ExpandableCalendarTile: View {
    
    var titleText: String = "Booking date"
    let minDate: Date
    @Binding var selectedDate: Date
    
    @State var isExpanding = false
    let onTap: () -> Void
    
    // MARK: - Drawing
    var body: some View {
        VStack(spacing: 16) {
            HStack {
                Image(systemName: "calendar")
                    .foregroundColor(.black)
                
                Text(titleText)
                    .font(.body)
                
                Spacer()
                
                Button {
                    onTap()
                    withAnimation {
                        isExpanding.toggle()
                    }
                } label: {
                    dateTimeLabel
                }
            }
            .layoutPriority(1)
            
            if isExpanding {
                VStack(spacing: 0) {
                    separator
                    embeddedCalendar
                }
            }
        }
        .padding()
        .frame(minHeight: 48)
        .background(Color.white)
        .cornerRadius(CGFloat(8))
        .shadow(
            color: .blue.opacity(0.5),
            radius: 8,
            x: 0,
            y: CGFloat(4)
        )
    }
    
    private var dateTimeLabel: some View {
        Text(DateFormatter.dmyFormatterShort2.string(from: selectedDate))
            .foregroundColor(isExpanding ? .orange : .black)
            .padding(.vertical, 6)
            .padding(.horizontal, 12)
            .background(Color.blue.opacity(0.5))
            .cornerRadius(8)
    }
    
    private var separator: some View {
        Rectangle()
            .frame(height: 1)
            .foregroundColor(Color.gray)
    }
    
    private var embeddedCalendar: some View {
        DatePicker(
            "",
            selection: $selectedDate,
            in: minDate...,
            displayedComponents: .date
        )
        .datePickerStyle(GraphicalDatePickerStyle())
        .accentColor(Color.orange)
        .padding(.vertical, 8)
    }
}
