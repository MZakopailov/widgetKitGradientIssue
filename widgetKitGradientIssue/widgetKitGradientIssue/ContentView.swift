//
//  ContentView.swift
//  widgetKitGradientIssue
//
//  Created by Maxim Zakopaylov on 27.10.2020.
//

import SwiftUI

struct ContentView: View {
    var gradient: LinearGradient {
        LinearGradient(
            gradient: Gradient(
                colors:
                [
                    Color(red: 96.0/255.0, green: 171.0/255.0, blue: 239.0/255.0),
                    Color(red: 163.0/255.0, green: 230.0/255.0, blue: 244.0/255.0)
                ]),
            startPoint: .top,
            endPoint: .bottom)
    }
    
    var body: some View {
        GeometryReader { geo in
            HStack(alignment: .center) {
                Divider().background(Color.black).padding(.vertical, 16.0).opacity(0.1)
            }
        }
        .background(gradient)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
