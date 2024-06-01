//  PearDetailView.swift
//  Pickelball
//  Created by Spencer Jones on 3/30/24.

import SwiftUI


// Pear Park Tournament Event
struct PearDetailView: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                VStack(spacing: 6) {
                    // MARK: WELCOME
                    Text("Welcome to Pear Park Pickleball Tournament!")
                        .padding(.top)
                        .clipped()
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(red: 0.32, green: 0.67, blue: 0.866))
                }
                .padding()
                
                VStack {}
                .frame(maxWidth: .infinity)
                .clipped()
                .frame(height: 500)
                .clipped()
                .background {
                    // MARK: FLYER
                    Image("pear")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 300.0, height: 500.0)
                }
                .overlay(alignment: .bottomTrailing) {
                    HStack(spacing: 15) {}
                        .font(.title3)
                        .padding()
                        .foregroundColor(.white)
                        .shadow(color: Color(.displayP3, red: 0/255, green: 0/255, blue: 0/255).opacity(0.11), radius: 8, x: 0, y: 4)
                }


                HStack {
                    VStack(alignment: .leading, spacing: 3) {
                        // MARK: COST
                        Text("Cost to Register")
                            .font(.system(.title2, weight: .medium))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .clipped()
                            .lineLimit(2)
                            .padding(.trailing, 80)
                    }
                    Text("$65")
                        .font(.title2)
                        .foregroundColor(.primary)
                }
                .padding()
                
                
                VStack {
                    // MARK: Date information
                    Text("Dates")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    
                    VStack {
                        Text("Saturday, May 11th:")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        
                            .multilineTextAlignment(.leading)
                            .padding(.horizontal)
                            .frame(width: UIScreen.main.bounds.width - 25)
                        Text("Mixed Doubles Skill\nAges 19+, 50+, 70+")
                    }
                    Spacer()
                    
                    VStack {
                        Text("Sunday, May 12th:")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        Text("Women's Doubles and Men's Doubles Skill/Ages 19+, 50+, 70+")
                            .multilineTextAlignment(.center)
                    }
                    Spacer()
                    Divider()
                    Spacer()
                    
                    
                    // MARK: PRIZES??
                    
                    
                    VStack {
                        // MARK: Venue Information
                        Text("Venue Information")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .padding(.top)
                        
                        HStack {
                            Image(systemName: "mappin.and.ellipse")
                                .foregroundColor(.blue)
                                .padding([.bottom, .trailing])
                                .frame(width: 15.0, height: 15.0)
                                .font(.title)
                            
                            Text("26701 US Hwy 27 Leesburg, FL")
                                .padding(.bottom)
                        }
                        
                        HStack {
                            Text("Surface Type:")
                                .fontWeight(.bold)
                            Text("Pickleball Hardcourt Surface")
                        }
                        
                        HStack {
                            Text("Play Area Type:")
                                .fontWeight(.bold)
                            Text("Outdoor Covered")
                        }
                        
                        HStack {
                            Text("Net Type:")
                                .fontWeight(.bold)
                            Text("Permanent")
                        }
                        
                        HStack {
                            Text("Ball Used:")
                                .fontWeight(.bold)
                            Text("JOOLA Heleus")
                        }
                        
                        HStack {
                            Text("Number of Courts:")
                                .fontWeight(.bold)
                            Text("12")
                        }
                        
                        HStack {
                            Text("Parking:")
                                .fontWeight(.bold)
                            Text("No Fee")
                        }
                    }
                    Spacer()
                    Divider()
                    Spacer()
                    
                    
                    
                    // MARK: Refund information
                    VStack {
                        Text("Refund Policy")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        
                        Text("Refunds will be available if withdrawn by April 11th, 2024 minus a $15 system processing fee. All refunds will be processed AFTER the tournament is completed.")
                            .multilineTextAlignment(.center)
                            .padding(.horizontal)
                    }
                    Spacer()
                }
                Spacer()
                
                // MARK: REGISTER BUTTON
                Button(action: {
                    if let url = URL(string: "https://pickleballbrackets.com/ptD.aspx?eid=3e2c9c88-6280-4093-9ebd-18f7b2c43c9e") {
                        UIApplication.shared.open(url)
                    }
                })
                {
                    Text("Register")
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .clipped()
                        .padding(.vertical)
                        .background(
                            RoundedRectangle(cornerRadius: 10, style: .continuous)
                                .foregroundColor(.cyan)
                        )
                        .padding(.horizontal)
                        .foregroundColor(.white)
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .clipped()
    }
}


#Preview {
    PearDetailView()
}
