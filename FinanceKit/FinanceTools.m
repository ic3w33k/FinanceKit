//
//  FinanceTools.m
//  FinanceDemo
//
//  Created by Hyper on 2021/4/30.
//

#import "FinanceTools.h"
#import "FinanceRegEx.h"

@implementation FinanceTools

+ (BOOL)validString:(NSString *)string regex:(NSString *)regex {
    return [[NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex] evaluateWithObject:string];
}

+ (void)textField:(UITextField *)textField fullLength:(NSUInteger)fullLength {
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
}

+ (BOOL)textField:(UITextField *)textField remain:(NSUInteger)remain replacementString:(NSString *)string {
    if (remain <= 0 && [string isEqualToString:@"."]) {
        return NO;
    }
    if ([textField.text isEqualToString:@""] && [string isEqualToString:@"."] )  return NO;
    NSRange zeroRange = [textField.text rangeOfString:@"0"];
    if(zeroRange.length == 1 && [textField.text length] == 1 && ![string isEqualToString:@"."]) {
        if ([string isEqualToString:@""]) {
            return YES;
        } else {
            return NO;
        }
    }
    NSRange pointRange = [textField.text rangeOfString:@"."];
    NSString *tempStr = [textField.text stringByAppendingString:string];
    NSUInteger strlen = [tempStr length];
    if(pointRange.length > 0 &&([string isEqualToString:@"."] || strlen - (pointRange.location + 1) > remain)) return NO;
    NSCharacterSet *numbers = (pointRange.length > 0)?[NSCharacterSet characterSetWithCharactersInString:@"0123456789"] : [NSCharacterSet characterSetWithCharactersInString:@"0123456789."];
    NSScanner *scanner = [NSScanner scannerWithString:string];
    NSString *buffer;
    BOOL scan = [scanner scanCharactersFromSet:numbers intoString:&buffer];
    if (!scan && ([string length] != 0)) {
        return NO;
    }
    return YES;
}

@end
