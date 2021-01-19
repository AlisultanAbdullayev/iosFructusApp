//
//  SwiftUIView.swift
//  Fructus
//
//  Created by Alisultan Abdullah on 6.12.2020.
//

import SwiftUI

struct FruitDetailView: View {
    
    //MARK: - PROPERTIES
    var fruit: Fruit

    //MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                    VStack(alignment: .center, spacing: 20) {
                        //HEADER
                        FruitHeaderView(fruit: fruit)
                            VStack(alignment: .leading, spacing: 20) {
                                    
                                    //TITLE
                                    Text(fruit.title)
                                        .font(.largeTitle)
                                        .fontWeight(.heavy)
                                        .foregroundColor(fruit.gradientColors[1])
                                    
                                    //HEADLINE
                                    Text(fruit.headline)
                                        .font(.headline)
                                        .multilineTextAlignment(.leading)
                                    
                                    //NUTRIENTS
                                    FruitNutrientsView(fruit: fruit)
                                    
                                    //SUBHEADLINE
                                    Text("Learn more about \(fruit.title)".uppercased())
                                        .fontWeight(.bold)
                                        .foregroundColor(fruit.gradientColors[1])
                                    
                                    //DESCRIPTION
                                    Text(fruit.description)
                                        .multilineTextAlignment(.leading)
                                    
                                    //LINK
                                    SourceLinkView()
                                        .padding(.top, 10)
                                        .padding(.bottom, 25)
                                    } //: VSTACK END
                                .padding(.horizontal, 20)
                            .frame(maxWidth: 640, alignment: .center)
                } //: VSTACK END
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
            } //: SCROLL END
            .edgesIgnoringSafeArea(.top)
        } //: NAVIGATION END
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

//MARK: - PREVIEW
struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
            .previewDevice("iPhone 11")
    }
}
