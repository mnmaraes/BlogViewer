//
//  BVPostSpec.m
//  BlogViewer
//
//  Created by Murillo Nicacio de Maraes on 4/28/14.
//  Copyright (c) 2014 This Impossible Life. All rights reserved.
//

#import "Specta.h"

#define EXP_SHORTHAND
#import "Expecta.h"

#import "OCMock.h"

#import "BVPost.h"

#import "BVPostContent.h"

SpecBegin(BVPost)

describe(@"BVPost", ^{
    
    context(@"creation", ^{
        it(@"should work with title only", ^{
            BVPost *post = [BVPost postWithTitle:@"Title"];
            
            expect(post).toNot.beNil();
            expect(post.title).to.equal(@"Title");
            expect(post.contents).toNot.beNil();
        });
    });
    
    context(@"content management", ^{
        __block BVPost *post;
        
        beforeEach(^{
            post = [BVPost postWithTitle:@"Title"];
        });
        
        it(@"should allow adding new content item", ^{
            id content = [OCMockObject mockForClass:[BVPostContent class]];
            [[content expect] setPost:post];
            
            [post addPostContent:content];
            
            expect(post.contents).to.equal(@[content]);
            [content verify];
        });
        
        it(@"should allow for out of order content insertion", ^{
            id firstContent = [OCMockObject mockForClass:[BVPostContent class]];
            id secondContent = [OCMockObject mockForClass:[BVPostContent class]];
            
            [[firstContent expect] setPost:post];
            [[secondContent expect] setPost:post];
            
            [post addPostContent:secondContent];
            [post insertPostContent:firstContent atPosition:0];
            
            expect(post.contents).to.equal(@[firstContent, secondContent]);
            [firstContent verify];
            [secondContent verify];
        });
        
        context(@"after insertion", ^{
            __block id content;
            beforeEach(^{
                content = [OCMockObject mockForClass:[BVPostContent class]];
                [[content stub] setPost:post];
                
                [post addPostContent:content];
            });
            
            it(@"should allow content removal", ^{
                [[content expect] setPost:nil];
                [post removeContent:content];
                
                expect(post.contents).to.equal(@[]);
                [content verify];
            });
        });
        
    });
    
});

SpecEnd
