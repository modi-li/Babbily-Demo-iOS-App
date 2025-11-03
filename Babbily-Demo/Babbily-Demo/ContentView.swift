//
//  ContentView.swift
//  Babbily-Demo
//
//  Created by Modi (Victor) Li.
//

import SwiftUI

struct ContentView: View {
    
    @State var input = ""
    
    var body: some View {
        NavigationStack {
            BaseVStack {
                BaseVStack {
                    Spacer()
                    Image("icon")
                        .resizable()
                        .frame(width: 52, height: 52)
                        .aspectRatio(contentMode: .fit)
                        .scaledToFill()
                        .clipped()
                    Spacing(20)
                    Text("Hello, how can I help today?")
                        .font(.system(size: 32, weight: .medium))
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                    Spacer()
                }
                
                ScrollView(.horizontal) {
                    HStack {
                        HStack {
                            Image(systemName: "square.and.pencil")
                                .fontWeight(.medium)
                                .padding(.bottom, 2)
                            Text("Write")
                                .font(.system(size: 15, weight: .medium))
                        }
                        .frame(height: 40)
                        .padding(.horizontal, 13)
                        .border(.capsule, color: .gray2)
                        
                        HStack {
                            Image(systemName: "paintbrush.pointed")
                                .font(.system(size: 15, weight: .medium))
                            Text("Create Image")
                                .font(.system(size: 15, weight: .medium))
                        }
                        .frame(height: 40)
                        .padding(.horizontal, 13)
                        .border(.capsule, color: .gray2)
                        
                        HStack {
                            Image("code")
                                .resizable()
                                .frame(width: 22, height: 22)
                                .aspectRatio(contentMode: .fit)
                                .scaledToFill()
                                .clipped()
                            Text("Code")
                                .font(.system(size: 15, weight: .medium))
                        }
                        .frame(height: 40)
                        .padding(.horizontal, 13)
                        .border(.capsule, color: .gray2)
                        
                        HStack {
                            Image(systemName: "sun.max")
                                .fontWeight(.medium)
                            Text("Every Day")
                                .font(.system(size: 15, weight: .medium))
                        }
                        .frame(height: 40)
                        .padding(.horizontal, 13)
                        .border(.capsule, color: .gray2)
                        
                        HStack {
                            Image(systemName: "lightbulb")
                                .font(.system(size: 16))
                            Text("Trending")
                                .font(.system(size: 15, weight: .medium))
                        }
                        .frame(height: 40)
                        .padding(.horizontal, 13)
                        .border(.capsule, color: .gray2)
                    }
                    .foregroundStyle(Color.gray5)
                }
                .contentMargins(.horizontal, Sizes.screenHorizontalPadding)
                .scrollIndicators(.hidden)
                
                Spacing(12)
                
                VStack {
                    HStack {
                        BaseTextField(placeholder: "Send a message...", text: $input, font: .system(size: 18, weight: .medium), placeholderColor: Color.gray4, textColor: Color.gray5)
                        Button {
                            
                        } label: {
                            ZStack {
                                Circle()
                                    .fill(Color.gray1)
                                    .frame(width: 35, height: 35)
                                Image(systemName: "arrow.up")
                                    .font(.system(size: 15, weight: .semibold))
                                    .foregroundStyle(Color.gray4)
                                    .padding(4)
                            }
                        }
                    }
                    Spacing(5)
                    HStack {
                        Button {
                            
                        } label: {
                            Image(systemName: "plus")
                                .font(.system(size: 21))
                                .foregroundStyle(Color.gray4)
                        }
                        Spacing(3)
                        Button {
                            
                        } label: {
                            Image(systemName: "microphone")
                                .font(.system(size: 18, weight: .medium))
                                .foregroundStyle(Color.gray4)
                        }
                        Spacing(5)
                        Button {
                            
                        } label: {
                            Image("bolt")
                                .resizable()
                                .frame(width: 21, height: 21)
                                .aspectRatio(contentMode: .fit)
                                .scaledToFill()
                                .clipped()
                        }
                        Spacer()
                        Menu {
                            Button {
                                
                            } label: {
                                Text("GPT-5")
                            }
                            Button {
                                
                            } label: {
                                Text("Claude")
                            }
                            Button {
                                
                            } label: {
                                Text("Gemini-Pro")
                            }
                        } label: {
                            HStack {
                                Text("Gemini-Pro")
                                    .font(.system(size: 15, weight: .medium))
                                Image(systemName: "chevron.down")
                                    .font(.system(size: 12, weight: .medium))
                                    .foregroundStyle(Color.gray4)
                                    .padding(.top, 1)
                            }
                        }
                    }
                }
                .padding(.top, 12)
                .padding(.horizontal)
                .padding(.bottom)
                .glassEffect(.regular.interactive(), in: RoundedRectangle(cornerRadius: 25))
                .padding(.horizontal)
                .padding(.bottom)
            }
            .foregroundStyle(Color.gray5)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        
                    } label: {
                        Image(systemName: "square.split.2x1")
                            .font(.system(size: 17))
                            .foregroundStyle(Color.fromRGB(red: 20, green: 20, blue: 20))
                    }
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        
                    } label: {
                        Image("eye-slash")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .aspectRatio(contentMode: .fit)
                            .scaledToFill()
                            .clipped()
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
