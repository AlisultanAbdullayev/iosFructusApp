//
//  OnboardingView.swift
//  Fructus
//
//  Created by Alisultan Abdullah on 6.12.2020.
//

import SwiftUI

struct OnboardingView: View {
    
    //MARK: - PROPERTIES
    var fruits: [Fruit] = fruitsData
    
    //MARK: - BODY
    var body: some View {
        TabView {
            ForEach(fruits) { item in
                FruitCardView(fruit: item)
            } //: LOOP END
        } //:TABVIEW END
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

//MARK: - PREVIEW
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
