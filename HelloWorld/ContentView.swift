//
//  ContentView.swift
//  HelloWorld
//
//  Created by 江德宣 on 2023/9/19.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    //    語音合成器
    let synthesizer = AVSpeechSynthesizer()
    
    
    var body: some View {
        let buttonName:String = "Happy Programming"
        let buttonName2:String = "Hello swift !"
        
        VStack {
            Button{
                spack(text:buttonName)
                
            }label: {
                Text(buttonName)
                    .fontWeight(.bold)
                    .font(.system(.title,design: .rounded))
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.yellow)
            .cornerRadius(50)
            
            
            Button{
                spack(text:buttonName2)
                
            }label: {
                Text(buttonName2)
                    .fontWeight(.bold)
                    .font(.system(.title,design: .rounded))
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.purple)
            .cornerRadius(50)
        }
        //        VStack {
        //            Image(systemName: "globe")
        //                .imageScale(.large)
        //                .foregroundColor(.accentColor)
        //            Text("Stay Hungry. Stay Foolish.")
        //                .fontWeight(.heavy)
        //                .font(.system(.title,design: .rounded))
        //        }
        //        .padding()
    }
    
    func spack(text:String){
        let utterance = AVSpeechUtterance(string: text)
        utterance.voice = AVSpeechSynthesisVoice(language: "en-GB")
        synthesizer.speak(utterance)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
