//
//  UIView+LayoutDef.m
//  BlogViewer
//
//  Created by Murillo Nicacio de Maraes on 4/25/14.
//  Copyright (c) 2014 This Impossible Life. All rights reserved.
//

#import "UIView+LayoutDef.h"

#import "LayoutDef.h"

#import "objc/runtime.h"

@interface UIViewLayoutDefIVarHolder : NSObject
@property (nonatomic) LayoutDef *layoutDef;

+(UIViewLayoutDefIVarHolder *)fetch:(UIView *)view;

@end

@implementation UIView (LayoutDef)

-(instancetype)initWithLayoutDef:(LayoutDef *)layoutDef
{
    self = [self init];
    
    if (self) {
        self.frame = layoutDef.frame;
        self.layoutDef = layoutDef;
    }
    
    return self;
}

-(LayoutDef *)layoutDef
{
    return [UIViewLayoutDefIVarHolder fetch:self].layoutDef;
}

-(void)setLayoutDef:(LayoutDef *)layoutDef
{
    [UIViewLayoutDefIVarHolder fetch:self].layoutDef = layoutDef;
}

@end

@implementation UIViewLayoutDefIVarHolder

+(UIViewLayoutDefIVarHolder *)fetch:(UIView *)view
{
    static void *compactFetchIVarKey = &compactFetchIVarKey;
    UIViewLayoutDefIVarHolder *ivars = objc_getAssociatedObject(view, &compactFetchIVarKey);
    
    if (ivars == nil) {
        ivars =[UIViewLayoutDefIVarHolder new];
        objc_setAssociatedObject(view, &compactFetchIVarKey, ivars, OBJC_ASSOCIATION_RETAIN);
    }
    
    return ivars;
}

@end