//
//  Suggestion.swift
//  SwiftUIComponents
//
//  Created by Ajeet Sharma on 22/01/2025.
//

import Foundation


struct Suggestion : Identifiable, Hashable {
    var id = UUID()
    var text: String
    var isSelected: Bool = false
    static let suggestionItem = Suggestion(text: "Delhi")
    
    static let suggestionItemList = [
        
        Suggestion(text: "Mumbai"),
        Suggestion(text: "Delhi"),
        Suggestion(text: "Venkatanarasimharajuvaripeta"),
        Suggestion(text: "Bangalore"),
        Suggestion(text: "Hyderabad"),
        Suggestion(text: "Ahmedabad"),
        Suggestion(text: "Kolkata"),
        Suggestion(text: "Pune"),
        Suggestion(text: "Jaipur"),
        Suggestion(text: "Lucknow"),
        Suggestion(text: "Kanpur"),
        Suggestion(text: "Nagpur"),
        Suggestion(text: "Indore"),
        Suggestion(text: "Thane"),
        Suggestion(text: "Bhopal"),
        Suggestion(text: "Visakhapatnam"),
        Suggestion(text: "Pimpri-Chinchwad"),
        Suggestion(text: "Patna"),
        Suggestion(text: "Vadodara"),
        Suggestion(text: "Ghaziabad"),
        Suggestion(text: "Ludhiana"),
        
        
        Suggestion(text: "Agra"),
        Suggestion(text: "Nashik"),
        Suggestion(text: "Faridabad"),
        Suggestion(text: "Meerut"),
        Suggestion(text: "Rajkot"),
        Suggestion(text: "Kalyan-Dombivli"),
        Suggestion(text: "Vasai-Virar"),
        
        Suggestion(text: "Varanasi"),
        Suggestion(text: "Srinagar"),
        Suggestion(text: "Aurangabad"),
        Suggestion(text: "Dhanbad"),
        Suggestion(text: "Amritsar"),
        Suggestion(text: "Navi Mumbai"),
        Suggestion(text: "Allahabad"),
        
        Suggestion(text: "Ranchi"),
        Suggestion(text: "Howrah"),
        Suggestion(text: "Coimbatore"),
        Suggestion(text: "Jabalpur"),
        Suggestion(text: "Gwalior"),
        Suggestion(text: "Vijayawada"),
        Suggestion(text: "Jodhpur"),
        
        Suggestion(text: "Madurai"),
        Suggestion(text: "Raipur"),
        Suggestion(text: "Kota"),
        Suggestion(text: "Guwahati"),
        Suggestion(text: "Chandigarh"),
        Suggestion(text: "Solapur"),
        Suggestion(text: "Hubli-Dharwad"),
        Suggestion(text: "Tiruchirappalli")
    ]
}
