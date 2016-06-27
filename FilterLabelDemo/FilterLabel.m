//
//  FilterLabel.m
//  AnyLoan
//
//  Created by x5 on 14/12/9.
//  Copyright (c) 2014年 Creditease. All rights reserved.
//

#import "FilterLabel.h"
#import <CoreText/CoreText.h>

#define LINESPACE 10
@implementation FilterLabel

- (void)drawRect:(CGRect)rect
{
    NSMutableAttributedString *string = [[NSMutableAttributedString alloc]   initWithString:self.text];
    [string addAttribute:(id)NSForegroundColorAttributeName    value:(id)self.textColor   range:NSMakeRange(0, [string length])];
    [string addAttribute:(id)NSFontAttributeName value:(id)self.font range:NSMakeRange(0, [string length])];
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    [paragraphStyle setLineSpacing:LINESPACE];//调整行间距
    [string addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, [string length])];
    NSString *regStr = @"(\\d{4}年\\d{1,2}月\\d{1,2}日|唐山人|iOS)";
    NSRegularExpression *reg = [NSRegularExpression regularExpressionWithPattern:regStr options:NSRegularExpressionCaseInsensitive error:NULL];
    NSArray *array = [reg matchesInString:self.text options:NSMatchingReportProgress range:NSMakeRange(0, [string length])];
    for (NSTextCheckingResult *result in array) {
        [string addAttribute:(id)NSForegroundColorAttributeName  value:(id)[UIColor redColor]   range:result.range];
    }
    [string drawInRect:self.bounds];
}

@end
