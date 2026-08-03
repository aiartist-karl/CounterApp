// CounterApp.swift
import SwiftUI

@main
struct CounterApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct ContentView: View {
    @State private var count: Int = 0
    var body: some View {
        VStack(spacing: 20) {
            Text("Count: \(count)")
                .font(.largeTitle)
            HStack(spacing: 40) {
                Button(action: {
                    count -= 1
                }) {
                    Image(systemName: "minus.circle.fill")
                        .resizable()
                        .frame(width: 60, height: 60)
                        .foregroundColor(.red)
                }
                Button(action: {
                    count += 1
                }) {
                    Image(systemName: "plus.circle.fill")
                        .resizable()
                        .frame(width: 60, height: 60)
                        .foregroundColor(.green)
                }
            }
        }
        .padding()
    }
}
