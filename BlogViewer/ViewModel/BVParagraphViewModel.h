//
//  BVParagraphViewModel.h
//  BlogViewer
//
//  Created by Murillo Nicacio de Maraes on 4/29/14.
//  Copyright (c) 2014 This Impossible Life. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BVParagraphViewModel : NSObject

#pragma mark - Managed View
@property (nonatomic, readonly) UITextView *view;

#pragma mark - Paragraph View Model Properties
@property (nonatomic) NSString *text;

#pragma mark - Paragraph View Model Initialization
-(instancetype)initWithText:(NSString *)text;

#pragma mark - Paragraph View Model Creation
+(id)paragraphViewModelWithText:(NSString *)text;

@end
