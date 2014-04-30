//
//  BVPostViewModel.m
//  BlogViewer
//
//  Created by Murillo Nicacio de Maraes on 4/29/14.
//  Copyright (c) 2014 This Impossible Life. All rights reserved.
//

#import "BVPostViewModel.h"

@implementation BVPostViewModel

#pragma mark - Post View Initialization
-(instancetype)initWithTitle:(NSString *)title andContentViewModels:(NSArray *)contentViewModels
{
    self = [self init];
    
    if (self) {
        _title = title;
        _contentViewModels = contentViewModels;
    }
    
    return self;
}


#pragma mark - Post View Creation
+(id)postViewModelWithTitle:(NSString *)title andContentViewModels:(NSArray *)contentViewModels
{
    return [[BVPostViewModel alloc] initWithTitle:title andContentViewModels:contentViewModels];
}

#pragma mark - View Getter

-(UIView *)view
{
    return [UIView new]; //TODO: Configure View
}


@end
