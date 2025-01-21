//
//  Suggestion.swift
//  SwiftUIComponents
//
//  Created by Ajeet Sharma on 22/01/2025.
//

import Foundation


struct Suggestion {
    var text: String
    var isHistory: Bool = false
    
    static let suggestionItem = Suggestion(text: "Delhi")
    
    static let historyItem = Suggestion(text: "Delhi", isHistory: true)
    
    static let suggestionItemList = [
        
        Suggestion(text: "Mumbai"),
        Suggestion(text: "Delhi"),
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
    
    
    static let historyItemList = [
        
        Suggestion(text: "Mumbai", isHistory: true),
        Suggestion(text: "Delhi", isHistory: true),
        Suggestion(text: "Bangalore", isHistory: true),
        Suggestion(text: "Hyderabad", isHistory: true),
        Suggestion(text: "Ahmedabad", isHistory: true),
        Suggestion(text: "Kolkata", isHistory: true),
        Suggestion(text: "Pune", isHistory: true),
        Suggestion(text: "Jaipur", isHistory: true),
        Suggestion(text: "Lucknow", isHistory: true),
        Suggestion(text: "Kanpur", isHistory: true),
        Suggestion(text: "Nagpur", isHistory: true),
        Suggestion(text: "Indore", isHistory: true),
        Suggestion(text: "Thane", isHistory: true),
        Suggestion(text: "Bhopal", isHistory: true),
        Suggestion(text: "Visakhapatnam", isHistory: true),
        Suggestion(text: "Pimpri-Chinchwad", isHistory: true),
        Suggestion(text: "Patna", isHistory: true),
        Suggestion(text: "Vadodara", isHistory: true),
        Suggestion(text: "Ghaziabad", isHistory: true),
        Suggestion(text: "Ludhiana", isHistory: true),
        
        
        Suggestion(text: "Agra", isHistory: true),
        Suggestion(text: "Nashik", isHistory: true),
        Suggestion(text: "Faridabad", isHistory: true),
        Suggestion(text: "Meerut", isHistory: true),
        Suggestion(text: "Rajkot", isHistory: true),
        Suggestion(text: "Kalyan-Dombivli", isHistory: true),
        Suggestion(text: "Vasai-Virar", isHistory: true),
        
        Suggestion(text: "Varanasi", isHistory: true),
        Suggestion(text: "Srinagar", isHistory: true),
        Suggestion(text: "Aurangabad", isHistory: true),
        Suggestion(text: "Dhanbad", isHistory: true),
        Suggestion(text: "Amritsar", isHistory: true),
        Suggestion(text: "Navi Mumbai", isHistory: true),
        Suggestion(text: "Allahabad", isHistory: true),
        
        Suggestion(text: "Ranchi", isHistory: true),
        Suggestion(text: "Howrah", isHistory: true),
        Suggestion(text: "Coimbatore", isHistory: true),
        Suggestion(text: "Jabalpur", isHistory: true),
        Suggestion(text: "Gwalior", isHistory: true),
        Suggestion(text: "Vijayawada", isHistory: true),
        Suggestion(text: "Jodhpur", isHistory: true),
        
        Suggestion(text: "Madurai", isHistory: true),
        Suggestion(text: "Raipur", isHistory: true),
        Suggestion(text: "Kota", isHistory: true),
        Suggestion(text: "Guwahati", isHistory: true),
        Suggestion(text: "Chandigarh", isHistory: true),
        Suggestion(text: "Solapur", isHistory: true),
        Suggestion(text: "Hubli-Dharwad", isHistory: true),
        Suggestion(text: "Tiruchirappalli", isHistory: true)
    ]
}
