//
//  AdditionQuestion.m
//  Maths
//
//  Created by Jaison Bhatti on 2017-09-06.
//  Copyright © 2017 Jaison Bhatti. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self genQuestion];
    }
    return self;
}

- (void)genQuestion {
    // set super.question here
    super.question = [NSString stringWithFormat:@"%li + %li", (long)self.leftValue, self.rightValue];
    // set super.answer here
    super.answer = (self.leftValue + self.rightValue);
}

@end
