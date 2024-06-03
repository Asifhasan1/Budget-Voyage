//
//  CreateTripView.swift
//  Budget-Voyage
//
//  Created by Asif on 5/16/24.
//

// .background(Color(hex: "2F4F4F").edgesIgnoringSafeArea(.all))
import SwiftUI

struct CreateTripView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(hex: "2F4F4F")
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Image("Background")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 400)
                        .padding(.top, 20)
                    
                    NavigationLink {
                        MainNavigationView()
                            .navigationBarBackButtonHidden()
                    } label: {
                        Text("CREATE A TRIP")
                            .font(Font.custom("Hiragino Mincho ProN-Bold", size: 20))
                            .foregroundColor(.black)
                            .padding()
                            .background(Color(hex: "BDC487"))
                            .cornerRadius(10)
                            .frame(width: 200, height: 200)
                            .padding()
                    }
                }
            }
        }
    }
}

#Preview {
    CreateTripView()
}


