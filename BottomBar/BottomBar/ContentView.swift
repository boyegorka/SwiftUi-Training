//
//  ContentView.swift
//  BottomBar
//
//  Created by Egor Svistushkin on 19.06.2021.
//

import SwiftUI



struct ContentView: View {
    
    @State private var selected = 0
    
    var body: some View {
        
        VStack {
            Spacer()
            
            ZStack {
                HStack {
                    Button(action: {
                        self.selected = 0
                    }) {
                        Image(systemName: "house")
                    }.foregroundColor(self.selected == 0 ? .black : .gray)
                    
                    Spacer(minLength: 12)
                    
                    Button(action: {
                        self.selected = 1
                    }) {
                        Image(systemName: "magnifyingglass")
                    }.foregroundColor(self.selected == 1 ? .black : .gray)
                    
                    Spacer().frame(width: 120)
                    
                    Button(action: {
                        self.selected = 2
                    }) {
                        Image(systemName: "person")
                    }.foregroundColor(self.selected == 2 ? .black : .gray)
                    Spacer(minLength: 12)
                    
                    Button(action: {
                        self.selected = 3
                    }) {
                        Image(systemName: "slider.horizontal.3")
                    }.foregroundColor(self.selected == 3 ? .black : .gray)
                }
                .padding()
                .padding(.horizontal, 22)
                .background(CurvedShape())
                
                Button(action: {
                    //
                }) {
                    Image(systemName: "heart")
                        .renderingMode(.original)
                        .padding(18)
                }.background(Color.yellow)
                .clipShape(Circle())
                .offset(y: -32)
                .shadow(radius: 5)
            }
        }.background(Color(.orange).edgesIgnoringSafeArea(.top))
        
    }
}








struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct CurvedShape: View {
    var body: some View {
        Path{ path in
            path.move(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: UIScreen.main.bounds.width, y: -100))
            path.addLine(to: CGPoint(x: UIScreen.main.bounds.width, y: 55))
            path.addArc(center: CGPoint(x: UIScreen.main.bounds.width / 2, y: 55), radius: 30, startAngle: .zero, endAngle: .init(degrees: 180), clockwise: true)
            path.addLine(to: CGPoint(x: 0, y: 55))

        }.fill(Color.white)
        .rotationEffect(.init(degrees: 180))
    }
}

