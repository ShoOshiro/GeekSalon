//
//  ViewController.swift
//  Mask
//
//  Created by 大城章太 on 2018/09/27.
//  Copyright © 2018年 com.shota. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var  imageView : UIImageView!

    
//    元画像の色は関係ない。
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: "image.png")?.mask(image: UIImage(named:"mask.jpg"))
    }


}

//extension UIImage {
//    func mask(image: UIImage?) -> UIImage {
//        if let maskRef = image?.cgImage,
//            let ref = cgImage,
//            let mask = CGImage(maskWidth: maskRef.width,
//                               height: maskRef.height,
//                               bitsPerComponent: maskRef.bitsPerComponent,
//                               bitsPerPixel: maskRef.bitsPerPixel,
//                               bytesPerRow: maskRef.bytesPerRow,
//                               provider: maskRef.dataProvider!,
//                               decode: nil,
//                               shouldInterpolate: false),
//            let output = ref.masking(mask) {
//            return UIImage(cgImage: output)
//        }
//        return self
//    }
//}

extension UIImage {
    func mask(image: UIImage?) -> UIImage {
        print(image?.cgImage)
        if let maskRef = image?.cgImage,
            let ref = cgImage,
            let mask = CGImage(maskWidth: 570,
                               height: 400,
                               bitsPerComponent: maskRef.bitsPerComponent,
                               bitsPerPixel: maskRef.bitsPerPixel,
                               bytesPerRow: maskRef.bytesPerRow,
                               provider: maskRef.dataProvider!,
                               decode: nil,
                               shouldInterpolate: false),
            let output = ref.masking(mask) {
            print(ref)
            return UIImage(cgImage: output)
        }
        return self
    }
}
