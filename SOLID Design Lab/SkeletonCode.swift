//
//  SkeletonCode.swift
//  SOLID Design Lab
//
//  Created by J Madsen on 5/12/23.
//

import Foundation

/*

// Single Responsibility Principle
    protocol UserDataStore {
           func saveUser(_ user: User)
           func fetchUser(withId id: String) -> User?
    }

    class UserDatabase: UserDataStore {
           func saveUser(_ user: User) {
                // Save user to database
           }
            
           func fetchUser(withId id: String) -> User? {
                // Fetch user from database
           }
    }

    // Open/Closed Principle
    protocol PaymentProcessor {
           func processPayment(_ payment: Payment)
    }

    class CreditCardProcessor: PaymentProcessor {
           func processPayment(_ payment: Payment) {
                // Process payment using credit card
           }
    }
    class PayPalProcessor: PaymentProcessor {
            func processPayment(_ payment: Payment) {
                 // Process payment using PayPal
            }
     }

     class PaymentService {
            private let paymentProcessor: PaymentProcessor
             
            init(paymentProcessor: PaymentProcessor) {
                 self.paymentProcessor = paymentProcessor
            }
             
            func makePayment(_ payment: Payment) {
                 paymentProcessor.processPayment(payment)
            }
     }

     // Liskov Substitution Principle
     class PremiumUser: User {
            var premiumFeatures: [String]
             
            init(id: String, name: String, email: String, premiumFeatures: [String]) {
                 self.premiumFeatures = premiumFeatures
                 super.init(id: id, name: name, email: email)
             }
     }

    // Interface Segregation Principle
    protocol UserFetchable {
           func fetchUsers() -> [User]
    }

*/
