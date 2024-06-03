//
//  TripsView.swift
//  Budget-Voyage
//
//  Created by Asif on 5/16/24.
//

import SwiftUI

struct TripsView: View {
    @State private var selectedTab: Int = 0

    var body: some View {
        ZStack {
            Color(hex: "2F4F4F")
                .edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                    Image("First")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .padding(.leading)

                    Text("Saved Trips")
                        .foregroundStyle(.white)
                        .font(Font.custom("Hiragino Mincho ProN", size: 30))
                        .padding(.leading)
                        

                    Spacer()
                }
                .padding(.top, 40)

                HStack {
                    Spacer()
                    
                    Button(action: {
                        selectedTab = 0
                    }) {
                        VStack {
                            Text("Upcoming")
                                .font(Font.custom("Hiragino Mincho ProN", size: 18))
                                .foregroundColor(selectedTab == 0 ? .white : .gray)
                            if selectedTab == 0 {
                                Rectangle()
                                    .frame(height: 2)
                                    .foregroundColor(.blue)
                            }
                        }
                    }
                    
                    Spacer()

                    Button(action: {
                        selectedTab = 1
                    }) {
                        VStack {
                            Text("Past")
                                .font(Font.custom("Hiragino Mincho ProN", size: 18))
                                .foregroundColor(selectedTab == 1 ? .white : .gray)
                            if selectedTab == 1 {
                                Rectangle()
                                    .frame(height: 2)
                                    .foregroundColor(.blue)
                            }
                        }
                    }
                    
                    Spacer()
                }
                .padding(.top, 20)

                if selectedTab == 0 {
                    ScrollView {
                        VStack(alignment: .leading, spacing: 20) {
                            HStack {
                                Image("Kalaw")
                                    .resizable()
                                    .frame(width: 60, height: 60)
                                    .cornerRadius(10)
                                    .padding(.leading)

                                VStack(alignment: .leading) {
                                    Text("Kalaw Budget Trip")
                                        .font(Font.custom("Hiragino Mincho ProN", size: 18))
                                        .font(.headline)
                                        .fontWeight(.bold)
                                    
                                    Text("$300 ( Budget )")
                                        .font(Font.custom("Hiragino Mincho ProN", size: 15))
                                        .foregroundColor(.red)
                                    
                                    Text("A resort is a place used for vacation, relaxation or as a day...")
                                        .foregroundColor(.gray)
                                        .font(Font.custom("Hiragino Mincho ProN", size: 14))
                                        .lineLimit(1)
                                }
                                .padding()

                                Spacer()

                                Image(systemName: "flag.fill")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                    .padding()
                            }
                            .background(Color.white)
                            .cornerRadius(10)
                            .shadow(radius: 5)
                            .padding(.horizontal)
                        }
                        .padding(.top, 20)
                    }
                } else {
                    Text("No past trips")
                        .padding(.top, 20)
                }

                Spacer()

            
                Button(action: {
                }) {
                    HStack {
                        Image(systemName: "plus")
                        Text("Add New Trip")
                            .font(Font.custom("Hiragino Mincho ProN", size: 18))
                    }
                    .padding()
                    .background(Color.purple)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                }
                .padding(.bottom, 20)
            }
        }
    }
}

#Preview {
    TripsView()
}
