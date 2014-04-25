//
//  BVUIView_LayoutDefSpec.m
//  BlogViewer
//
//  Created by Murillo Nicacio de Maraes on 4/25/14.
//  Copyright (c) 2014 This Impossible Life. All rights reserved.
//

#import "Specta.h"

#define EXP_SHORTHAND
#import "Expecta.h"
#import "OCMock.h"

#import "UIView+LayoutDef.h"
#import "LayoutDef.h"

SpecBegin(UIView_LayoutDef)

describe(@"UIView+LayoutDef", ^{
    
    it(@"creates views using a LayoutDef instead of a rect", ^{
        id layoutDef = [OCMockObject mockForClass:[LayoutDef class]];
        [[[layoutDef expect] andReturnValue:[NSValue valueWithCGRect:CGRectMake(0, 0, 320, 320)]] frame];
        
        UIView *view = [[UIView alloc] initWithLayoutDef:layoutDef];
        
        expect(view).toNot.beNil();
        expect(view.frame).to.equal(CGRectMake(0, 0, 320, 320));
        expect(view.layoutDef).toNot.beNil();
        [layoutDef verify];
    });
    
    afterEach(^{
        
    });
});

SpecEnd
