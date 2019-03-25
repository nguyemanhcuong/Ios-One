
import UIKit
class ViewController: UIViewController {
    @IBOutlet var iamgeo1:
    UIImageView!
    @IBOutlet var imageUrl: UIImageView!
    var imageViewCode:UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        iamgeo1.layer.cornerRadius = 73
        iamgeo1.layer.borderWidth = 4
        iamgeo1.layer.borderColor = #colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1)
        iamgeo1.layer.masksToBounds = true
        let url = URL(string: "https://images.pexels.com/photos/257360/pexels-photo-257360.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500")
        let data = try! Data(contentsOf: url!)
        let imageUrl1 = UIImage(data: data)
        imageUrl?.image = imageUrl1
        
        self.setUpImageView()
    }
    func setUpImageView() {
        imageViewCode = UIImageView()
        imageViewCode.frame = CGRect(x: 125, y: 100, width: 115, height: 115)
        
        let image = UIImage(named: "AppIcon")
        imageViewCode.image = image
        imageViewCode.layer.cornerRadius = 20
        imageViewCode.layer.borderWidth = 4
        imageViewCode.layer.borderColor = #colorLiteral(red: 0.9344248723, green: 1, blue: 0.2643673962, alpha: 1)
        imageViewCode.backgroundColor = #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)
        
        self.view.addSubview(imageViewCode)
    }
}

