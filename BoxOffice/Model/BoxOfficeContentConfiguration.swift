//
//  BoxOfficeContentConfiguration.swift
//  BoxOffice
//
//  Created by vetto, brody on 2023/03/27.
//
import UIKit

struct BoxOfficeContentConfiguration: UIContentConfiguration, Hashable {
    var rank: String?
    var rankIncrement: String?
    var rankOldAndNew: String?
    var title: String?
    var audienceCount: String?
    var audienceAccumulationCount: String?
    
    
    func makeContentView() -> UIView & UIContentView {
        print("makeContentView")
        return BoxOfficeContentView(configuration: self)
    }
    
    func updated(for state: UIConfigurationState) -> Self {
        print("updated")
        guard let state = state as? UICellConfigurationState else {
            return self
        }
        
        var updatedConfiguration = self
//        if state.isSelected {
//            updatedConfiguration.rankColor = .red
//        } else {
//            updatedConfiguration.rankColor = .blue
//        }
        
        return updatedConfiguration
    }
}
