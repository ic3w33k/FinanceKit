//
//  FinanceKit.swift
//  FinanceDemo
//
//  Created by Hyper on 2020/12/21.
//

import Foundation
import UIKit

func RegEx(string: String, regex: String) -> Bool {
    return NSPredicate(format: "SELF MATCHES %@", regex).evaluate(with: string)
}
/**
 dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
     NSString *toBeString = textField.text;
     UITextRange *selectedRange = [textField markedTextRange];
     UITextPosition *position = [textField positionFromPosition:selectedRange.start offset:0];
     if (!position) {
         if (toBeString.length > fullLength) {
             NSRange rangeIndex = [toBeString rangeOfComposedCharacterSequenceAtIndex:fullLength];
             if (rangeIndex.length == 1) {
                 textField.text = [toBeString substringToIndex:fullLength];
             } else {
                 NSRange rangeRange = [toBeString rangeOfComposedCharacterSequencesForRange:NSMakeRange(0, fullLength)];
                 textField.text = [toBeString substringWithRange:rangeRange];
             }
         }
     }
 });
 */

func textField(_ textField: UITextField, fullLength: Int) -> Void {
    guard let text = textField.text else { return }
    let toBeString = NSString(string: text)
    guard let selectedRange = textField.markedTextRange else { return }
    if nil == textField.position(from: selectedRange.start, offset: 0) {
        if toBeString.length > fullLength  {
            let rangeIndex = toBeString.rangeOfComposedCharacterSequence(at: fullLength)
            if rangeIndex.length == 1 {
                textField.text = toBeString.substring(to: fullLength)
            } else {
                let rangeRange = toBeString.rangeOfComposedCharacterSequences(for: NSRange.init(location: 0, length: fullLength))
                textField.text = toBeString.substring(with: rangeRange)
            }
        }
    }
}
