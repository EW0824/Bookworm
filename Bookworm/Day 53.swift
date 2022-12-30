////
////  Day 53.swift
////  Bookworm
////
////  Created by OAA on 29/12/2022.
////
//
//import SwiftUI
//
//
//struct PushButton: View {
//    let title: String
//    @Binding var isOn: Bool
//
//    var onColors = [Color.red, Color.yellow]
//    var offColors = [Color(white: 0.6), Color(white: 0.4)]
//
//    var body: some View {
//        Button(title) {
//            isOn.toggle()
//        }
//        .padding()
//        .background(LinearGradient(gradient: Gradient(colors: isOn ? onColors : offColors), startPoint: .top, endPoint: .bottom))
//        .foregroundColor(.white)
//        .clipShape(Capsule())
//        .shadow(radius: isOn ? 0 : 5)
//
//    }
//}
//
//
//
//struct textEditor: View {
//
//    @AppStorage("notes") private var notes = ""
//
//    var body: some View {
//        NavigationView {
//            TextEditor(text: $notes)
//                .navigationTitle("Notes")
//                .padding()
//        }
//
//    }
//}
//
//
//struct student: View {
//    // creates FETCH request without sorting, and places it into a property called students with type FetchedResults<Student>
//    // fetchrequest uses our managedobjectContext automatically
//    @FetchRequest(sortDescriptors: []) var students: FetchedResults<Student>
//
//
//    // we need access to managedobject class (created by core data) to modify data
//    @Environment(\.managedObjectContext) var moc
//
//    var body: some View {
//        VStack {
//            List(students) { student in
//                Text(student.name ?? "NO NAME")
//            }
//
//            Button("Add") {
//                let firstNames = ["Giannis", "Harry", "Luke", "Hallei"]
//                let lastNames = ["Antetokounmpo", "DeRozen", "Potter", "Dunphy"]
//
//                let chosenFirstName = firstNames.randomElement()!
//                let chosenLastName = lastNames.randomElement()!
//
//                // managed object context -> so the object knows where it should be stored
//                let student = Student(context: moc)
//
//                student.id = UUID()
//                student.name = "\(chosenFirstName) \(chosenLastName)"
//
//                // we dont care what happens when it fails
//                try? moc.save()
//            }
//        }
//    }
//}
//
//
//
//
//struct Day_53: View {
//
//    @State private var rememberMe = false
//
//    var body: some View {
//        VStack {
//            PushButton(title: "Remember Me", isOn: $rememberMe)
//            // Text will not reflect -> contentview is storing one variable, pushbutton another. RememberMe text at the bottom is not updated
//            Text(rememberMe ? "On": "Off")
//        }
//
//        textEditor()
//
//        student()
//    }
//}
//
//struct Day_53_Previews: PreviewProvider {
//    static var previews: some View {
//        Day_53()
//    }
//}
