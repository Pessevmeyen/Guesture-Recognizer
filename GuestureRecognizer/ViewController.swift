//
//  ViewController.swift
//  GuestureRecognizer
//
//  Created by Furkan Eruçar on 29.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    @IBOutlet var label: UILabel!
    
    var ankara = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        imageView.isUserInteractionEnabled = true // Kullanıcı üstüne tıklayabilsin
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(gorselDegistir)) // Jest algılayıcımızı oluşturmamız gerekiyor
        
        imageView.addGestureRecognizer(gestureRecognizer) // imageView'a bu gestureRecognizer'ı atadık.
        
        
    }

    
    @objc func gorselDegistir() { // Burada görsele tıklanınca başka bi görsele değişmesini ve tekrar başa gelmesini yapıcaz
        
        // var ankara = false // Böyle yazarsak eğer her tıkladığımızda ankara false olacağı için hiç aksi olmayacağından else bloğu çalıştırılmayacak. Bu yüzden class altına yazmamız daha doğru olur. Aynı şekilde;
        // var ankara: Bool 'da diyemeyiz çünkü bi initializerımız olmaz
        
        if ankara == false {
            imageView.image = UIImage(named: "ankara") // imageView "ankara" görseline değişecek
            // imageView.image diyerek imageView'ı değiştirebiliyoruz. .text yazsaydık yazı alıcaktık, burda .image yaptık ki görsel alalım.
            label.text = "Ankara" // burda da tıklandıktan sonra "Ankara"ya dönüşecek
            ankara = true
            
        } else {
            imageView.image = UIImage(named: "istanbul") // imageView "istanbul" görseline değişecek
            label.text = "İstanbul" // burda da tıklandıktan sonra "istanbul"a dönüşecek
            ankara = false
        }

}

}
