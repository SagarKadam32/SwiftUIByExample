//
//  SubscriberBootcamp.swift
//  iDine
//
//  Created by Sagar Kadam on 10/10/22.
//

import SwiftUI
import Combine

class SubscriberViewModel: ObservableObject {
    
    @Published var count: Int = 0
    @Published var textField: String = ""
    @Published var textIsValid: Bool = false
    @Published var showButton: Bool = false
    
    var timer : AnyCancellable?
    var cancellables = Set<AnyCancellable>()
    
    init() {
        setUpTimer()
        addTextFieldSubscriber()
        addButtonSubscriber()
    }
    
    func addTextFieldSubscriber() {
        $textField
            .debounce(for: .seconds(0.5), scheduler: DispatchQueue.main)
            .map { (text) -> Bool in
                if text.count > 3 {
                    return true
                }
                return false
            }
            //.assign(to: \.textIsValid, on: self)
            .sink(receiveValue: { [weak self] (isValid) in
                self?.textIsValid = isValid
            })
            .store(in: &cancellables)
    }
    
    func setUpTimer() {
        Timer
            .publish(every: 1.0, on: .main, in: .common)
            .autoconnect()
            .sink { [weak self] _ in
                guard let strongSelf = self else { return }
                strongSelf.count += 1
                
                /*
                if strongSelf.count >= 100 {
                    for item in strongSelf.cancellables {
                        item.cancel()
                    }
                } */
            }
            .store(in: &cancellables)
    }
    
    func addButtonSubscriber() {
        $textIsValid
            .combineLatest($count)
            .sink { [weak self] (isValid, count) in
                guard let strongSelf = self else { return }
                
                if isValid && count > 10 {
                    strongSelf.showButton = true
                }else {
                    strongSelf.showButton = false
                }
            }
            .store(in: &cancellables)
    }
}

struct SubscriberBootcamp: View {
    
    @StateObject var vm = SubscriberViewModel()
    
    var body: some View {
        VStack(spacing: 10) {
            Text("It's no secret that Publishers and Subscribers are the future of iOS development! Thanks to the Combine framework, we can implement custom solutions in our application to ensure that the data is always in sync across our application. This is a HUGE step forward for iOS development and mastering these tools can take your app to the next level. Note: this video builds upon the last 2 videos in the series. I would recommend that you watch those videos first! :)")
                .font(.headline)
                .fontWeight(.semibold)
            
            Text("\(vm.count)")
                .font(.largeTitle)
                .foregroundColor(.blue)
            
            
            
            TextField("Type something here...", text:  $vm.textField)
                .padding(.leading)
                .frame(height: 55)
                .font(.headline)
                .background(Color.gray)
                .cornerRadius(10)
                .overlay (
                    ZStack {
                        Image(systemName: "xmark")
                           .foregroundColor(.red)
                        
                           .opacity(
                            vm.textField.count < 1 ? 0.0 :
                            vm.textIsValid ? 0.0 : 1.0)
                        
                        Image(systemName: "checkmark")
                           .foregroundColor(.green)
                           .opacity(vm.textIsValid ? 1.0 : 0.0)
                        
                    }
                    .font(.title)
                    .padding(.trailing)
                    , alignment: .trailing
                )
            
            Button(action: {}, label: {
                Text("Submit".uppercased())
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .opacity(vm.showButton ? 1.0 : 0.5)
            })
            .disabled(!vm.showButton)
            
            Section {
                MoreDetailsView(linkURL: "https://www.youtube.com/watch?v=Q-1EDHXUunI&list=PLwvDm4VfkdpiagxAXCT33Rkwnc5IVhTar", title: "Publishers and Subscribers in Combine")
            }
         }
        .padding()
    }
}

struct SubscriberBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SubscriberBootcamp()
    }
}
