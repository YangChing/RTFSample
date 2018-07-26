//
//  ViewController.swift
//  RTFSample
//
//  Created by 馮仰靚 on 2018/7/26.
//  Copyright © 2018年 YCFeng.com.tw. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var textView: UITextView!
  override func viewDidLoad() {
    super.viewDidLoad()
    textView.attributedText = configRTF(from: "sample")
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  func configRTF(from resource: String) -> NSAttributedString? {
    guard let url = Bundle.main.url(forResource: resource, withExtension: "rtf") else { return nil }
    guard let data = try? Data(contentsOf: url) else { return nil }
    return try? NSAttributedString(data: data,
                                  options: [NSAttributedString.DocumentReadingOptionKey.documentType : NSAttributedString.DocumentType.rtf],
                                  documentAttributes: nil)
  }

}

