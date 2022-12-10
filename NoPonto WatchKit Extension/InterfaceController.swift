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
    
    private var kg: Double = 0.1
    private var meatTemperature: MeatTemperature = .rare
    private let increment = 0.1
    private var timerIsRunning = false
    private let maxKg = 2.0
    
    override func awake(withContext context: Any?) {
        groupImage.setHidden(true)
        setupPicker()
        updateConfiguration()
    }
    
    private func setupPicker(){
        // Picker de quantidade
        // precisa alimentar  o picker com WKPickerItem
        var weightItems: [WKPickerItem] = []
        
        for weight in stride(from: 0.1, through: maxKg, by: increment) {
            let item = WKPickerItem()
            item.title = String(format: "%.1f", weight)
            weightItems.append(item)
        }
        
        pickerWeight.setItems(weightItems)
        pickerWeight.setSelectedItemIndex(0)
        
        // Picker do ponto da carne
        var cookItems: [WKPickerItem] = []
        
        for imageIndex in 1...4 {
            let item = WKPickerItem()
            item.contentImage = WKImage(imageName: "temp-\(imageIndex)")
            cookItems.append(item)
        }
        
        pickerCook.setItems(cookItems)
        pickerCook.setSelectedItemIndex(0)
        
        
    }
    
    private func updateConfiguration() {
        
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
