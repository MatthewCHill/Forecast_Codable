//
//  Constants.swift
//  Forecast_Codable
//
//  Created by Matthew Hill on 2/27/23.
//

import Foundation

struct Constants {
    
    struct WeatherUrl {
        
        //https://api.weatherbit.io/v2.0/forecast/daily?units=I&city=SaintGeorge,UT&key=10416a5e8f0646f19a858bc1b6075048
        static var baseUrl = "https://api.weatherbit.io/v2.0/forecast/daily"
        static var unitQueryKey = "units"
        static var unitQueryValue = "I"
        static var apiQueryKey = "key"
        static var apiQueryValue = "10416a5e8f0646f19a858bc1b6075048"
        static var cityQueryValue = "SaintGeorge,UT"
        static var cityQueryKey = "city"
    }
}
