import SwiftUI

struct ContentView: View {
    @State private var percentage: CGFloat = 0.0
    
    let yellowish = Color(red: 0.78, green: 0.65, blue: 0.35, opacity: 1.0) // Color yellow
    let brown = Color(red: 0.37, green: 0.23, blue: 0.13, opacity: 1.0) // Color brown
    let stick1 = Color(red: 0.40, green: 0.368, blue: 0.309, opacity: 1.0) // Color of the long lines
    let stick2 = Color(red: 0.65, green: 0.63, blue: 0.6, opacity: 1.0)
    let background = Color.white
    
    let lightgreen = Color(red: 188/255, green: 209/255, blue: 149/255, opacity: 1.0)
    
    let mavicik = Color(red: 80/255, green: 145/255, blue: 180/255, opacity: 1.0)
    
    let coral = Color(red: 228/255, green: 132/255, blue: 121/255, opacity: 1.0)
    
    let girmizi = Color(red: 204/255, green: 97/255, blue: 101/255, opacity: 1.0)

     
    

    var body: some View {
        VStack {
            ZStack {
                Button(action: {
                    self.percentage = 1.0
                })
                {
                    Text("Start")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(minWidth: 0, maxWidth: 100)
                        .background(LinearGradient(gradient: Gradient(colors: [stick1, stick2]), startPoint: .leading, endPoint: .trailing))
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(yellowish, lineWidth: 2))
                }
                .position(x: 202.4, y: 700)
                
                
                
                
                
                Group{
                    Path() { path in
                        path.move(to:  CGPoint(x:131,y:16))
                        path.addLine(to:CGPoint( x:173,y:258))
                        
                    }
                    .trim(from: 0, to: percentage)
                    .stroke(coral, lineWidth: 10)
                    .animation(.easeOut(duration: 2.0), value: percentage)
                    
                    
                    
                    Path() { path in
                        //koyu pembe
                        path.move(to:  CGPoint(x:25,y:154))
                        path.addLine(to:CGPoint( x:268,y:112))
                        
                    }
                    .trim(from: 0, to: percentage)
                    .stroke(girmizi, lineWidth: 10)
                    .animation(.easeOut(duration: 2.0), value: percentage)
                    
                    
                    Path() { path in
                        //mavi
                        path.move(to:  CGPoint(x:29,y:13))
                        path.addLine(to:CGPoint( x:72,y:56))
                        
                        path.move(to:  CGPoint(x:80,y:63))
                        path.addLine(to:CGPoint( x:130,y:113))
                        
                        
                        path.move(to:  CGPoint(x:172,y:155))
                        path.addLine(to:CGPoint( x:273,y:256))
                        
                        path.move(to:  CGPoint(x:274,y:117))
                        path.addLine(to:CGPoint( x:275,y:158))
                    }
                    .trim(from: 0, to: percentage)
                    .stroke(mavicik, lineWidth: 10)
                    .animation(.easeOut(duration: 2.0), value: percentage)
                    
                    
                    
                    Path() { path in
                        /// yeşil
                        path.move(to:  CGPoint(x:25,y:122))
                        path.addLine(to:CGPoint( x:269,y:163))
                        
                        path.move(to:  CGPoint(x:121,y:117))
                        path.addLine(to:CGPoint( x:122,y:259))
                        
                        path.move(to:  CGPoint(x:266,y:46))
                        path.addLine(to:CGPoint( x:265,y:259))
                        
                        path.move(to:  CGPoint(x:264,y:16))
                        path.addLine(to:CGPoint( x:266,y:46))
                    }
                    .trim(from: 0, to: percentage)
                    .stroke(lightgreen, lineWidth: 10)
                    .animation(.easeOut(duration: 2.0), value: percentage)
                    
                }     
                
                Group{
                    Path() { path in
                        //beyaz
                        path.move(to:  CGPoint(x:277,y:16))
                        path.addLine(to:CGPoint( x:244,y:42))
                        
                    }
                    .trim(from: 0, to: percentage)
                    .stroke(Color.white, lineWidth: 10)
                    .animation(.easeOut(duration: 2.0), value: percentage)
                    
                    
                    Path() { path in
                        //açık pembe
                        
                        path.move(to:  CGPoint(x:20,y:159))
                        path.addLine(to:CGPoint( x:21,y:260))
                        
                    }
                    .trim(from: 0, to: percentage)
                    .stroke(coral, lineWidth: 10)
                    .animation(.easeOut(duration: 2.0), value: percentage)
                    
                    Path() { path in
                        
                        //Q-R KOYU PEMBE
                        
                        path.move(to:  CGPoint(x:164,y:17))
                        path.addLine(to:CGPoint( x:163,y:259))
                        
                    }
                    .trim(from: 0, to: percentage)
                    .stroke(girmizi, lineWidth: 10)
                    .animation(.easeOut(duration: 2.0), value: percentage)
                    
                    Path() { path in
                        path.move(to:  CGPoint(x:173,y:17))
                        path.addLine(to:CGPoint( x:132,y:260))
                    }     
                    .trim(from: 0, to: percentage)
                    .stroke(mavicik, lineWidth: 10)
                    .animation(.easeOut(duration: 2.0), value: percentage)
                    
                    Path() { path in
                        //beyaz
                        path.move(to:  CGPoint(x:130,y:113))
                        path.addLine(to:CGPoint( x:172,y:155))
                        
                    }
                    .trim(from: 0, to: percentage)
                    .stroke(Color.white, lineWidth: 10)
                    .animation(.easeOut(duration: 2.0), value: percentage)
                    
                    Group{

                    
                    Path() { path in
                        //açık pembe
                        
                        path.move(to:  CGPoint(x:160,y:120))
                        path.addLine(to:CGPoint( x:163,y:259))
                        
                    }
                    .trim(from: 0, to: percentage)
                    .stroke(coral, lineWidth: 10)
                    .animation(.easeOut(duration: 2.0), value: percentage)
                    
                        
                        Path() { path in
                            //koyu pembe
                            
                            path.move(to:  CGPoint(x:131,y:162))
                            path.addLine(to:CGPoint( x:171,y:120))
                            
                        }
                        .trim(from: 0, to: percentage)
                        .stroke(girmizi, lineWidth: 10)
                        .animation(.easeOut(duration: 2.0), value: percentage)
                    }
                    
                    Path() { path in
                        //koyu pembe
                        
                        path.move(to:  CGPoint(x:160,y:160))
                        path.addLine(to:CGPoint( x:163,y:259))
                        
                    }
                    .trim(from: 0, to: percentage)
                    .stroke(girmizi, lineWidth: 10)
                    .animation(.easeOut(duration: 2.0), value: percentage)
                
                }
                
            }
        }
        
        
    }

        
    }


