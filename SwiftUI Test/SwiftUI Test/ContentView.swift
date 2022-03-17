//
//  ContentView.swift
//  SwiftUI Test
//
//  Created by 정현석 on 2022/03/17.
//

import SwiftUI

struct SwiftUIView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> UIView {

        let view = UIView()

        return view
    }

    func updateUIView(_ view: UIView, context: Context) {

        let label = UILabel()

        label.frame.size = CGSize(width: 100, height: 50)
        label.text = "Hello, world!!"
        label.textColor = .black
        label.tag = 1
        // label.center = view.center

        view.addSubview(label)
    }
}

struct ContentView: View {
    var body: some View {
        // Text("Hello, world!!!!")
        //     .padding()

        VStack {
            SwiftUIView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
