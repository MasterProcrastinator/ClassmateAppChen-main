//
//  ViewController3.swift
//  ClassmateAppChen
//
//  Created by ALVIN CHEN on 10/12/23.
//

import UIKit

class ViewController3: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var firstTextfield: UITextField!
    
    @IBOutlet weak var lastTextField: UITextField!
    
    @IBOutlet weak var statusTextField: UITextField!
    
    
    @IBOutlet weak var firstNameLabel: UILabel!
    
    @IBOutlet weak var lastNameLabel: UILabel!
    
    @IBOutlet weak var ratingLabel: UILabel!
    
    @IBOutlet weak var statusLabel: UILabel!
    
    var index : Int = 0
    
    var students: [Student] = [

            Student(firstName: "Brenden", lastName: "Wydra", rating: Rating.peak_mid, situation: "cool dude"),

            Student(firstName: "Noel", lastName: "Ortiz", rating: Rating.mid, situation: "probably selling drugs"),

            Student(firstName: "Jake", lastName: "Kenefick", rating: Rating.mid, situation: "being a fake life guard"),

            Student(firstName: "Oliver", lastName: "Murray", rating: Rating.mid, situation: "Not enough info"),

            Student(firstName: "Tyler", lastName: "Mok", rating: Rating.mid, situation: "In Seaver's class"),

            Student(firstName: "Stanislav", lastName: "Stajila", rating: Rating.peak_mid, situation: "doing his best"),

            Student(firstName: "Andrew", lastName: "Kaiser", rating: Rating.mid, situation: "Skipping All About Me"),

            Student(firstName: "Mikaela", lastName: "Wallen", rating: Rating.mid, situation: "Winning"),

            Student(firstName: "Catherine", lastName: "Huseby", rating: Rating.mid, situation: "Something Something Color Guard"),

            Student(firstName: "Liam", lastName: "Cox", rating: Rating.mid, situation: "Taking a long break"),

            Student(firstName: "Annahlu", lastName: "Raclawski", rating: Rating.mid, situation: "Amurica"),

            Student(firstName: "Natalie", lastName: "DuShane", rating: Rating.mid, situation: "Idk"),

            Student(firstName: "Claire", lastName: "McGuire", rating: Rating.mid, situation: "working"),

            Student(firstName: "Olivia", lastName: "Mendez", rating: Rating.mid, situation: "preparing for her favorite holiday"),

            Student(firstName: "Avery", lastName: "McAllister", rating: Rating.mid, situation: "(I'm running out of ideas)"),

            Student(firstName: "Alvin", lastName: "Chen", rating: Rating.peak_mid, situation: "Alive"),

            Student(firstName: "Gabi", lastName: "Avila", rating: Rating.mid, situation: "watching somebody shoplift"),

            Student(firstName: "Miles", lastName: "Richmond", rating: Rating.mid, situation: "Reusing his presentation"),

            Student(firstName: "Corey", lastName: "Atkinson", rating: Rating.mid, situation: "probably Singing"),

            Student(firstName: "Mason", lastName: "Bartell", rating: Rating.mid, situation: "doing something"),

            Student(firstName: "Brian", lastName: "Wang", rating: Rating.peak_mid, situation: "broken")

        ]
    
    
    
    override func viewDidLoad() {
        firstTextfield.delegate = self
        lastTextField.delegate = self
        statusTextField.delegate = self
        super.viewDidLoad()

        index = 0
        firstNameLabel.text = "First Name: \(students[index].firstName)"
        lastNameLabel.text = "Last Name : \(students[index].lastName)"
        statusLabel.text = "Status/Situation: \(students[index].situation)"
        switch students[index].rating{
        case .peak_mid:
            ratingLabel.text = "this student is peak mid"
            
        case .mid:
            ratingLabel.text = "this person is pretty mid"
            
        case.below_mid:
            ratingLabel.text = "this person is below mid"
            
        default:
            ratingLabel.text = "this person is not a og"
            
        }
        }
        

     
    
    
    @IBAction func nextAction(_ sender: UIButton) {
        if(index<students.count-1){
            index+=1
        }
        firstNameLabel.text = "First Name: \(students[index].firstName)"
        lastNameLabel.text = "Last Name : \(students[index].lastName)"
        statusLabel.text = "Status/Situation: \(students[index].situation)"
        switch students[index].rating{
        case .peak_mid:
            ratingLabel.text = "this student is peak mid"
            
        case .mid:
            ratingLabel.text = "this person is pretty mid"
            
        case.below_mid:
            ratingLabel.text = "this person is below mid"
            
        default:
            ratingLabel.text = "this person is not a og"
            
        }
    }
    
    
    @IBAction func backAction(_ sender: UIButton) {
        if(index>0){
            index = index - 1
        }
        firstNameLabel.text = "First Name: \(students[index].firstName)"
        lastNameLabel.text = "Last Name : \(students[index].lastName)"
        statusLabel.text = "Status/Situation: \(students[index].situation)"
        switch students[index].rating{
        case .peak_mid:
            ratingLabel.text = "this student is peak mid"
            
        case .mid:
            ratingLabel.text = "this person is pretty mid"
            
        case.below_mid:
            ratingLabel.text = "this person is below mid"
            
        default:
            ratingLabel.text = "this person is not a og"
            
        }
    }
    
    @IBAction func sortAction(_ sender: UIButton) {
        
    }
    
    
    @IBAction func addAction(_ sender: UIButton) {
        var s1 = Student(firstName: firstTextfield.text!, lastName: lastTextField.text!, rating: .not_og, situation: statusTextField.text!)
        
        students.append(s1)
        
        
        
        
        self.resignFirstResponder() // doesnt work
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        firstTextfield.resignFirstResponder()
        lastTextField.resignFirstResponder()
        statusTextField.resignFirstResponder()
        return true
    }
    
    
    
    
    

}
