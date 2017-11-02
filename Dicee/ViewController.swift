//
//  ViewController.swift
//  Dicee
//
//  Created by Cliff Gurske on 10/15/17.
//  Copyright © 2017 Cliff Gurske. All rights reserved.

//	TO DO:
//	1) Need to animate dice pictures

import UIKit

class ViewController: UIViewController {
	
	var randomDiceIndex1 = 0
	var randomDiceIndex2 = 0
	
	let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
	
	@IBOutlet weak var diceImageView1: UIImageView!
	@IBOutlet weak var diceImageView2: UIImageView!
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	@IBAction func rollButtonPressed(_ sender: UIButton) {
		
		updateDiceImages()
		
	}
	
	func updateDiceImages() {
		randomDiceIndex1 = Int(arc4random_uniform(6))
		randomDiceIndex2 = Int(arc4random_uniform(6))
		
		print(randomDiceIndex1) //testing purposes
		print(randomDiceIndex2)
		
		//diceImageView1.image = UIImage(named: "dice2")
		//diceImageView1.image = #imageLiteral(resourceName: "dice2") //new way to show images.remove forward slashes in front to see it.
		diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
		diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
	}
	
	//updates Dice Images after shake motion has ended.
	override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
		
		updateDiceImages()
	}
	
	
	
}

