import SwiftUI
import AVFoundation


struct QuizQuestion:  Identifiable{
    let id = UUID()
    let question: String
    let answers: [String]
    let correctAnswer: Int
}

struct QuizView: View {
    @State private var isSoundPlaying = true
    @State private var isLabelAnimated = false
    @State private var isSpeakerButtonAnimated = false
    @State private var isMuteButtonAnimated = false
    @Environment(\.colorScheme) var colorScheme
    
    let questions = [QuizQuestion(question: "🚀.Which planet rotates Counterclockwise↺ ?", answers: ["Mars","Venus","Earth","Neptune"], correctAnswer: 1),
                     QuizQuestion(question: "🚀.Which planet is farthest from the Sun☀️ ?", answers: ["Mercury","Uranus","Neptune","Earth"], correctAnswer: 2),
                     QuizQuestion(question: "🚀.Which Planet has a only a single Moon🌑 ?", answers: ["Venus","Earth","Mars","Saturn"], correctAnswer: 1),
                     QuizQuestion(question: "🚀.Which Planet has the most number of moons🌙 ?", answers: ["Jupiter","Saturn","Venus","Neptune"], correctAnswer: 0),
                     QuizQuestion(question:  "🚀.Which planet resembles that of the Earth's Moon🌑 ?", answers: ["Mars","Mercury","Uranus","Earth"], correctAnswer: 1),
                     QuizQuestion(question: "🚀.Which is the largest planet in the solarSystem⁉️", answers: ["Mars","Uranus","Mercury","Jupiter"], correctAnswer: 3),
                     QuizQuestion(question: "🚀.Which Planet has the largest volcanoes🌋 ?", answers: ["Uranus","Earth","Venus","Mars"], correctAnswer: 3 ),
                     QuizQuestion(question:"🚀.Which is the hottest planet in the solar system🥵 ?", answers: ["Mars","Earth","Venus","Neptune"], correctAnswer: 2)]
    
    
    @State private var currentQuestionIndex = 0
    @State private var selectedAnswerIndex: Int?
    @State private var isCorrect = false
    
    var body: some View {
        ZStack{
            Image("space")
                .resizable(resizingMode: .stretch)
                .edgesIgnoringSafeArea(.all)
            VStack{
                VStack(alignment: .leading){
                    Text("Practice 🎯")
                        .font(.system(size: 60, weight: .bold, design: .rounded))
                        .padding(.vertical,10)
                        .padding(.horizontal,20)
                        .foregroundColor(Color.white)
                    Text("🧑‍🚀: Happy To see you here mate and finally you have reached the final part of our Planetopedia🪐 journey, try to answer the following questions⁉️ and test your understanding💡.")
                        .padding(.horizontal,10)
                        .padding(.bottom,10)
                        .foregroundColor(Color.white)
                        .font(.system(size: 21,weight: .bold, design:.monospaced))
                        .multilineTextAlignment(.center)
                    Divider()
                    
                    
                }
                if currentQuestionIndex<7{
                    VStack{
                        Text(questions[currentQuestionIndex].question)
                            .font(.title)
                            .padding(.top)
                            .foregroundColor(Color.white)
                        VStack{
                            HStack {
                                Button(action: {
                                    selectedAnswerIndex = 0
                                    isCorrect = selectedAnswerIndex == questions[currentQuestionIndex].correctAnswer
                                }) {
                                    Text(questions[currentQuestionIndex].answers[0])
                                        .scaledToFill()
                                        .font(.system(size: 25,weight: .bold,design: .rounded))
                                        .foregroundColor(Color.white)
                                        .padding()
                                }
                                .frame(width: 200,height: 70)
                                .padding(.vertical)
                                .background(selectedAnswerIndex == 0 ? (isCorrect ? Color.green : Color.red) : Color.clear)
                                .cornerRadius(15)
                                
                                Button(action: {
                                    selectedAnswerIndex = 1
                                    isCorrect = selectedAnswerIndex == questions[currentQuestionIndex].correctAnswer
                                    
                                }) {
                                    Text(questions[currentQuestionIndex].answers[1])
                                        .scaledToFit()
                                        .font(.system(size: 25,weight: .bold,design: .rounded))
                                        .foregroundColor(Color.white)
                                        .padding()
                                }
                                .frame(width: 200,height: 70)
                                .padding(.vertical)
                                .background(selectedAnswerIndex == 1 ? (isCorrect ? Color.green : Color.red) : Color.clear)
                                .cornerRadius(15)
                                
                            }
                            
                            HStack {
                                Button(action: {
                                    selectedAnswerIndex = 2
                                    isCorrect = selectedAnswerIndex == questions[currentQuestionIndex].correctAnswer
                                    
                                }) {
                                    Text(questions[currentQuestionIndex].answers[2])
                                        .scaledToFit()
                                        .font(.system(size: 25,weight: .bold,design: .rounded))
                                        .foregroundColor(Color.white)
                                        .padding()
                                    
                                }
                                .frame(width: 200,height: 70)
                                .padding(.vertical)
                                .background(selectedAnswerIndex == 2 ? (isCorrect ? Color.green : Color.red) : Color.clear)
                                .cornerRadius(15)
                                
                                Button(action: {
                                    selectedAnswerIndex = 3
                                    isCorrect = selectedAnswerIndex == questions[currentQuestionIndex].correctAnswer
                                    
                                }) {
                                    Text(questions[currentQuestionIndex].answers[3])
                                        .scaledToFit()
                                        .font(.system(size: 25,weight: .bold,design: .rounded))
                                        .foregroundColor(Color.white)
                                        .padding()
                                }
                                .frame(width: 200,height: 70)
                                .padding(.vertical)
                                .background(selectedAnswerIndex == 3 ? (isCorrect ? Color.green : Color.red) : Color.clear)
                                .cornerRadius(15)
                                
                            }
                            
                            Button("Next") {
                                if selectedAnswerIndex != nil {
                                    if selectedAnswerIndex == questions[currentQuestionIndex].correctAnswer {
                                        if currentQuestionIndex<7{
                                            currentQuestionIndex += 1
                                            selectedAnswerIndex = nil
                                        }else{
                                            currentQuestionIndex = 0
                                            selectedAnswerIndex = nil
                                        }
                                    }
                                }
                            }
                            .foregroundColor(Color.white)
                            .buttonStyle(.borderedProminent)
                            .background(selectedAnswerIndex == nil ? Color.gray : Color.blue)
                            .cornerRadius(10)
                            .padding(.top,40)
                            .disabled(selectedAnswerIndex == nil)
                            
                        }
                    }
                }else{
                    NavigationStack{
                        VStack{
                            Text("🧑‍🚀: Congratulations Mate! You have answered all the questions now its time to felicitate you🎖️.")
                                .padding()
                                .padding(.top)
                                .foregroundColor(Color.white)
                                .font(.system(.headline,design:.monospaced))
                            NavigationLink {
                                Conclude().navigationBarBackButtonHidden(true)
                            } label: {
                                Text("Continue")
                            }
                            .buttonStyle(.borderedProminent)
                            .padding(.top)
                            .foregroundColor(Color.white)
                        }
                    }
                }
                Button(action:{
                    if isSoundPlaying{
                        isSoundPlaying = false
                        self.playSound()
                        
                    }else{
                        isSoundPlaying = true 
                        qplayer.stop()
                        
                    }
                }){
                    if isSoundPlaying{
                        Text("🔇")
                            .buttonStyle(.borderless)
                            .padding()
                            .padding(.bottom)
                            .font(.system(size: 40,weight: .bold, design:.rounded))
                            .font(.system(.title))
                            .fontWeight(.heavy)
                        
                    }
                    else{
                        Text("🔈")
                            .buttonStyle(.borderless)
                            .padding()
                            .padding(.bottom)
                            .font(.system(size: 40,weight: .bold, design:.rounded))
                            .font(.system(.title))
                            .fontWeight(.heavy)
                    }
                }
            }
        }
    }
    func playSound(){
        let url = Bundle.main.url(forResource: "Spacie", withExtension: ".mp4")
        guard url != nil else{
            return
        }
        do{
            qplayer = try AVAudioPlayer(contentsOf: url!)
            qplayer?.play()
        }catch{
            //do block will work!!
        }
    }
}
