//
//  ViewController.swift
//  SegmentedControls
//
//  Created by jose ramirez on 5/31/17.
//  Copyright © 2017 Jose Ramirez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    /*So you can customize a segmented control mostly through the Attributes Inspector and then if you want to handle when a new tab is selected in the segmented control, simply handle the Value Changed Event and then you can access the Selected Index through "selectedSegmentIndex" and you can get the title of that selected segment by calling "titleForSegment" and passing in the selected index.*/
    
    @IBAction func segmentDidChange(_ sender: UISegmentedControl) {
        //access which segment is selected through an index
        let selectedIndex = sender.selectedSegmentIndex
        label.text = sender.titleForSegment(at: selectedIndex)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

