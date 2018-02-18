//
//  ChangeCityViewController.swift
//  MYWeather
//
//  Created by iOS_developer on 9/30/17.
//  Copyright © 2017 iOS_developer. All rights reserved.
//

protocol ChangeCityDelegate {
    func userEnteredANewCityName(city : String)
}

import UIKit

class ChangeCityViewController: UIViewController {
    
    var delegate : ChangeCityDelegate?

    @IBOutlet weak var changeCityTextField: UITextField!
    
    @IBAction func getweatherPressed(_ sender: Any) {
        
        //1 Get the city name the user entered in the text field
        let cityName = changeCityTextField.text!
        
        //2 If we have a delegate set, call the method userEnteredANewCityName
        delegate?.userEnteredANewCityName(city: cityName)
        
        //3 dismiss the Change City View Controller to go back to the WeatherViewController
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
