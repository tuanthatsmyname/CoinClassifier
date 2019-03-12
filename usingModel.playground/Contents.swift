/*:
 # Using an Image Classifier Model
 
 This Playground file serves as a demo for using an Image Classifier Model that recognize a value of an Euro coin.
 
 Using the Image Classifier Model is easy because of the Apple's Vision Framework.
 
 ### All we have to do is:
 
 1. Create a container for a Image Classifier model
*/
import UIKit
import Vision

let model = try VNCoreMLModel(for: CoinClassifier().model)
/*:
 ###
 2. Initialize an image analysis request that uses a Core ML model to process images.
*/
let request = VNCoreMLRequest(model: model, completionHandler: { (request, error) in
    guard let results = request.results as? [VNClassificationObservation] else {
        guard let error = error else {
            print("error")
            return
        }
        print(error.localizedDescription)
        return
    }
    
    for classification in results {
        print("\(classification.identifier), \(classification.confidence)")
    }
    
})
/*:
 ###
 3. Initialize an object that processes one or more image analysis requests pertaining to a single image and perform the request.
 */
let handler = VNImageRequestHandler(cgImage: #imageLiteral(resourceName: "1cent.jpg").cgImage!)
try handler.perform([request])

