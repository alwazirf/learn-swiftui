//
//  LandmarksList.swift
//  BuildingListsndNavigation
//
//  Created by Alwazir Fitrah on 23/11/24.
//

import SwiftUI

struct LandmarksList: View {
    var body: some View {
        NavigationSplitView{
            List(landmarks){
                landmark in
                NavigationLink{
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
        
    }
}

#Preview {
    LandmarksList()
}
