
import UIKit

class MyViewController: UIViewController {

    open override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        //print("touchBegan")
    }
//
//    open func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?)
//
//    open func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?)
//
//    open func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?)
   
    }

extension MyViewController: UITextFieldDelegate {
    
//    open override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        print("touch began from extension ")
//        //self.myTextField.resignFirstResponder()
//    }
    
}

extension UITextField {
    
    
//    open override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        self.resignFirstResponder()
//        print("touch from extension TEXTFIELD")
//    }
}
