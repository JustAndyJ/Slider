import UIKit 

class ViewController: UIViewController {
  
    @IBOutlet weak var mySlider: UISlider!  
    @IBOutlet weak var ageMsgLbl: UILabel!
  
    override func viewDidLoad() {  
      
        super.viewDidLoad() 
      
        // Do any additional setup after loading the view.  
      
        mySlider.minimumValue = 0  
        mySlider.maximumValue = 60  
    }  

    @IBAction func sliderValueChanged(_ sender: UISlider) {
      
        let roundedValue = round(sender.value)  
        sender.value = roundedValue  
        ageMsgLbl.text = "Your Age is "+Int(sender.value).description  
    }  
}  