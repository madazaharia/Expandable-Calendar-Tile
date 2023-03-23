//
//  DateFormatterExtensions.swift
//  ExpandableCalendarTile
//
//  Created by Madalin Zaharia on 23.03.2023.
//

import Foundation

extension DateFormatter {

    private static var utc = TimeZone(abbreviation: "UTC")

    public static var day: DateFormatter {
        let formatter = DateFormatter()
        /*
        formatter.timeZone = TimeZone.current
        formatter.locale = Locale.current
        formatter.calendar = Calendar(identifier: .gregorian)
        */
        formatter.dateFormat = "EEEEE"
        return formatter
    }

    public static var month: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMMM"
        return formatter
    }

    public static var year: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy"
        return formatter
    }

    public static var monthAndYear: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMMM yyyy"
        return formatter
    }

    public static var hourMinute: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm"
        return formatter
    }
    
    public static var hourMinuteLongStyle: DateFormatter { // amSymbol & pmSymbol
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm a"
        return formatter
    }

    public static var hourMinute2: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH'h'mm"
        return formatter
    }

    public static var hour: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH'h'"
        return formatter
    }

    public static var dayMonth: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM"
        return formatter
    }

    public static var monthDay: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd"
        return formatter
    }

    public static var newsDayFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"

        return formatter
    }

    public static var notificationFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm - dd/MM/yyyy"
        return formatter
    }

    public static var eventFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd MMMM yyyy"
        return formatter
    }

    public static var spaasFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE dd MMMM"
        return formatter
    }

    public static var dmyFormatterShort: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE dd MMM"
        return formatter
    }
    
    public static var dmyFormatterShort2: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd MMM yyyy"
        return formatter
    }
    
    public static var placesFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE dd MMMM"
        return formatter
    }
}
