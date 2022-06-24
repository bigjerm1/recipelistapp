//
//  ContentView.swift
//  recipelistapp
//
//  Created by Apple on 20/06/2022.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var model = recipemodel()
    var body: some View {
           
           NavigationView {
               List(model.recipes) { r in
                   
                   NavigationLink(
                       destination: recipedetailview(recipe:r),
                       label: {
                           
                           // MARK: Row item
                           HStack(spacing: 20.0) {
                               Image(r.image)
                                   .resizable()
                                   .scaledToFill()
                                   .frame(width: 50, height: 50, alignment: .center)
                                   .clipped()
                                   .cornerRadius(5)
                               Text(r.name)
                           }
                           
                       })
                   
                   
                   
               }
               .navigationBarTitle("All Recipes")
           }
       }
   }

   struct RecipeListView_Previews: PreviewProvider {
       static var previews: some View {
           ContentView()
       }
   }
