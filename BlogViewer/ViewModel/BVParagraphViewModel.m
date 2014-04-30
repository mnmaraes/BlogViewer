//
//  BVParagraphViewModel.m
//  BlogViewer
//
//  Created by Murillo Nicacio de Maraes on 4/29/14.
//  Copyright (c) 2014 This Impossible Life. All rights reserved.
//

#import "BVParagraphViewModel.h"

@interface BVParagraphViewModel () <UITextViewDelegate>

@end

@implementation BVParagraphViewModel

#pragma mark - Paragraph View Model Initialization
-(instancetype)initWithText:(NSString *)text
{
    self = [self init];
    
    if (self) {
        _text = text;
    }
    
    return self;
}

#pragma mark - Paragraph View Model Creation
+(id)paragraphViewModelWithText:(NSString *)text
{
    return [[BVParagraphViewModel alloc] initWithText:text];
}

#pragma mark - Managed View Model Getter
-(UITextView *)view
{
    UITextView *textView = [UITextView new];
    textView.text = self.text;
    
    //TO DO: Observe Text View text with KVO.
    
    return textView;
}

@end
