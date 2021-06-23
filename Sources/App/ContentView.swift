//
//  ContentView.swift
//  MyApp
//
//  Created by Higashihara Yoki on 2021/06/22.
//

import SwiftUI

public struct ContentView: View {
    
    public init(){}
    
    public var body: some View {
        
        let baseURL: String = (Bundle.main.object(forInfoDictionaryKey: "Base URL") as? String) ?? "not defined"
        
        VStack {
            Text("Hello, world!")
                .padding()
            
            Text("Base URL: \(baseURL)")
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
