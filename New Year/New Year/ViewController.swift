//
//  ViewController.swift
//  New Year
//
//  Created by Rachit Prajapati on 31/12/20.
//

import UIKit
import SwiftConfettiView

final class ViewController: UIViewController {
    
    //Mark:- Properties
    
    var emitterLayer : CAEmitterLayer!
    
    private let label1: UILabel = {
        return UILabel().labelMaker(title: "Happy",font: "ArialRoundedMTBold", size: 70)
    }()
    
    private let label2: UILabel = {
        return UILabel().labelMaker(title: "New Year", font: "ArialRoundedMTBold",size: 70)
    }()
    
    private let label3: UILabel = {
        return UILabel(frame: CGRect(x: 0.0, y: 0.0, width: 250, height: 400)).labelMaker(title: "2020", font: "ArialRoundedMTBold", size: 90)
    }()
    
    private let label4: UILabel = {
        return UILabel().labelMaker(title: "2021", font: "ArialRoundedMTBold", size: 90)
    }()
    
    
    
    //MARK:- Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        configureAnimations()
        
    }
    
    
    //MARK:- Helpers
    
    func configureUI() {
        
        let confettiView = SwiftConfettiView(frame: self.view.bounds)
        self.view.addSubview(confettiView)
        confettiView.type = .confetti
        confettiView.startConfetti()
        
        
        view.backgroundColor = .black
        view.addSubview(label1)
        label1.alpha = 0
        label1.anchor(top: view.safeAreaLayoutGuide.topAnchor, paddingTop: 40)
        label1.centerX(inView: view, constant: 0)
        
        view.addSubview(label2)
        label2.alpha = 0
        label2.anchor(top: label1.bottomAnchor, paddingTop: 10)
        label2.centerX(inView: view, constant: 0)
        
        
        view.addSubview(label3)
        label3.anchor(top: label2.bottomAnchor, paddingTop: 150)
        label3.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        label3.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
        label3.centerY(inView: view, constant: 0)
        label3.centerX(inView: view, constant: 0)
        
        
        view.addSubview(label4)
        label4.alpha = 0
        label4.anchor(top: label2.bottomAnchor, paddingTop: 150)
        label4.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        label4.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
        label4.centerY(inView: view, constant: 0)
        label4.centerX(inView: view, constant: 0)
    }
    
    
    func configureAnimations() {
        UIView.animate(withDuration: 2) {
            self.label3.transform = CGAffineTransform(translationX: 100, y: 53)
            self.label3.alpha = 0
            self.label3.transform = CGAffineTransform(scaleX: 2, y: 2)
        }
        
        
        let offset = CGPoint(x: 0, y: view.frame.maxY)
        let x: CGFloat = 0, y: CGFloat = 0
        label4.transform = CGAffineTransform(translationX: offset.x + x, y: offset.y + y)
        label4.isHidden = false
        UIView.animate(
            withDuration: 1, delay: 1, usingSpringWithDamping: 0.47, initialSpringVelocity: 3,
            options: .curveEaseOut, animations: {
                self.label4.transform = .identity
                self.label4.alpha = 1
            })
        
        
        label1.transform = CGAffineTransform(scaleX: 0, y: 0)
        UIView.animate(withDuration: 1, delay: 2, usingSpringWithDamping: 0.5, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
            self.label1.alpha = 1
            self.label1.transform = .identity
        }) { (true) in
            self.label2.transform = CGAffineTransform(scaleX: 0, y: 0)
            UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.3, initialSpringVelocity: 0, options: .curveEaseInOut) {
                self.label2.alpha = 1
                self.label2.transform = .identity
            } completion: { (false) in }
        }
    }
}



