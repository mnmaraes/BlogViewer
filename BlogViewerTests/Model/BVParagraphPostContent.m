//
//  BVParagraphPostContent.m
//  BlogViewer
//
//  Created by Murillo Nicacio de Maraes on 4/28/14.
//  Copyright (c) 2014 This Impossible Life. All rights reserved.
//

#import "Specta.h"

#define EXP_SHORTHAND
#import "Expecta.h"

#import "BVParagraphPostContent.h"

SpecBegin(BVParagraphPostContent)

describe(@"BVParagraphPostContent", ^{
    beforeEach(^{
        
    });
    
    it(@"should be able to be created with text", ^{
        BVParagraphPostContent *paragraph = [BVParagraphPostContent paragraphWithText:@"Text"];
        
        expect(paragraph).toNot.beNil();
        expect(paragraph.text).to.equal(@"Text");
    });
    
    afterEach(^{
        
    });
});

SpecEnd
