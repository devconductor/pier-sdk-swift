//
// LocalDateTime.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class LocalDateTime: JSONEncodable {

    public enum DayOfWeek: String { 
        case Monday = "MONDAY"
        case Tuesday = "TUESDAY"
        case Wednesday = "WEDNESDAY"
        case Thursday = "THURSDAY"
        case Friday = "FRIDAY"
        case Saturday = "SATURDAY"
        case Sunday = "SUNDAY"
    }
    
    public enum Month: String { 
        case January = "JANUARY"
        case February = "FEBRUARY"
        case March = "MARCH"
        case April = "APRIL"
        case May = "MAY"
        case June = "JUNE"
        case July = "JULY"
        case August = "AUGUST"
        case September = "SEPTEMBER"
        case October = "OCTOBER"
        case November = "NOVEMBER"
        case December = "DECEMBER"
    }
    
    public var chronology: Chronology?
    public var dayOfMonth: Int?
    public var dayOfWeek: DayOfWeek?
    public var dayOfYear: Int?
    public var hour: Int?
    public var minute: Int?
    public var month: Month?
    public var monthValue: Int?
    public var nano: Int?
    public var second: Int?
    public var year: Int?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["chronology"] = self.chronology?.encodeToJSON()
        nillableDictionary["dayOfMonth"] = self.dayOfMonth
        nillableDictionary["dayOfWeek"] = self.dayOfWeek?.rawValue
        nillableDictionary["dayOfYear"] = self.dayOfYear
        nillableDictionary["hour"] = self.hour
        nillableDictionary["minute"] = self.minute
        nillableDictionary["month"] = self.month?.rawValue
        nillableDictionary["monthValue"] = self.monthValue
        nillableDictionary["nano"] = self.nano
        nillableDictionary["second"] = self.second
        nillableDictionary["year"] = self.year
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
