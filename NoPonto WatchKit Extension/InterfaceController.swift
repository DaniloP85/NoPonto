//
//  InterfaceController.swift
//  NoPonto WatchKit Extension
//
//  Created by Usuário Convidado on 10/12/22.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var timer: WKInterfaceTimer!
    @IBOutlet weak var buttonTimer: WKInterfaceButton!
    @IBOutlet weak var labelWeight: WKInterfaceLabel!
    @IBOutlet weak var groupText: WKInterfaceGroup!
    @IBOutlet weak var groupImage: WKInterfaceGroup!
    @IBOutlet weak var labelCook: WKInterfaceLabel!
    @IBOutlet weak var sliderCook: WKInterfaceSlider!
    @IBOutlet weak var pickerCook: WKInterfacePicker!
    @IBOutlet weak var pickerWeight: WKInterfacePicker!
    @IBOutlet weak var labelCook2: WKInterfaceLabel!
    
    
    
    override func awake(withContext context: Any?) {
        groupImage.setHidden(true)
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
    }

    @IBAction func toggleTimer() {
    }
    
    @IBAction func minus() {
    }
    
    @IBAction func plus() {
    }
    
    @IBAction func onSliderChange(_ value: Float) {
    }
    
    @IBAction func onWeightPickerChange(_ value: Int) {
    }
    @IBAction func onCookPickerChange(_ value: Int) {
    }
    
    @IBAction func onModeChange(_ value: Bool) {
        groupText.setHidden(value)
        groupImage.setHidden(!value)
    }
}
