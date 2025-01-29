//
//  MultipleOption.swift
//  SwiftUIComponents
//
//  Created by Ajeet Sharma on 22/01/2025.
//

import Foundation


struct MultipleOption : Identifiable, Hashable {
    var id = UUID()
    var text: String
    var isSelected: Bool = false
    static let option = MultipleOption(text: "Delhi")
    
    static let optionList = [
        
        MultipleOption(text: "Mumbai"),
        MultipleOption(text: "Delhi"),
        MultipleOption(text: "Venkatanarasimharajuvaripeta"),
        MultipleOption(text: "Bangalore"),
        MultipleOption(text: "Hyderabad"),
        MultipleOption(text: "Ahmedabad"),
        MultipleOption(text: "Kolkata"),
        MultipleOption(text: "Pune"),
        MultipleOption(text: "Jaipur"),
        MultipleOption(text: "Lucknow"),
        MultipleOption(text: "Kanpur"),
        MultipleOption(text: "Nagpur"),
        MultipleOption(text: "Indore"),
        MultipleOption(text: "Thane"),
        MultipleOption(text: "Bhopal"),
        MultipleOption(text: "Visakhapatnam"),
        MultipleOption(text: "Pimpri-Chinchwad"),
        MultipleOption(text: "Patna"),
        MultipleOption(text: "Vadodara"),
        MultipleOption(text: "Ghaziabad"),
        MultipleOption(text: "Ludhiana"),
        
        
        MultipleOption(text: "Agra"),
        MultipleOption(text: "Nashik"),
        MultipleOption(text: "Faridabad"),
        MultipleOption(text: "Meerut"),
        MultipleOption(text: "Rajkot"),
        MultipleOption(text: "Kalyan-Dombivli"),
        MultipleOption(text: "Vasai-Virar"),
        
        MultipleOption(text: "Varanasi"),
        MultipleOption(text: "Srinagar"),
        MultipleOption(text: "Aurangabad"),
        MultipleOption(text: "Dhanbad"),
        MultipleOption(text: "Amritsar"),
        MultipleOption(text: "Navi Mumbai"),
        MultipleOption(text: "Allahabad"),
        
        MultipleOption(text: "Ranchi"),
        MultipleOption(text: "Howrah"),
        MultipleOption(text: "Coimbatore"),
        MultipleOption(text: "Jabalpur"),
        MultipleOption(text: "Gwalior"),
        MultipleOption(text: "Vijayawada"),
        MultipleOption(text: "Jodhpur"),
        
        MultipleOption(text: "Madurai"),
        MultipleOption(text: "Raipur"),
        MultipleOption(text: "Kota"),
        MultipleOption(text: "Guwahati"),
        MultipleOption(text: "Chandigarh"),
        MultipleOption(text: "Solapur"),
        MultipleOption(text: "Hubli-Dharwad"),
        MultipleOption(text: "Tiruchirappalli")
    ]
}
