//
//  DayController.swift
//  Forecast_Codable
//
//  Created by Matthew Hill on 2/27/23.
//

import Foundation

class DayController {
    //lets get that URL GOING!
    //https://api.weatherbit.io/v2.0/forecast/daily?units=I&city=SaintGeorge,UT&key=10416a5e8f0646f19a858bc1b6075048
    
    static func fetchDays(completion: @escaping (TopLevelDictionary?) -> Void) {
        
        guard let baseURL = URL(string: Constants.WeatherUrl.baseUrl) else { completion(nil) ; return }
        var urlComponents = URLComponents(url: baseURL, resolvingAgainstBaseURL: true)
        let apiQuery = URLQueryItem(name: Constants.WeatherUrl.apiQueryKey, value: Constants.WeatherUrl.apiQueryValue)
        let unitQuery = URLQueryItem(name: Constants.WeatherUrl.unitQueryKey, value: Constants.WeatherUrl.unitQueryValue)
        let cityQuery = URLQueryItem(name: Constants.WeatherUrl.cityQueryKey, value: Constants.WeatherUrl.cityQueryValue)
        urlComponents?.queryItems = [apiQuery,unitQuery,cityQuery]
        
        guard let finalURL = urlComponents?.url else {completion(nil); return}
        print(finalURL)
        
        
    }
} //End of class
