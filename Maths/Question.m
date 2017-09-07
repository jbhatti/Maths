//
//  AdditionQuestion.m
//  Maths
//
//  Created by Jaison Bhatti on 2017-09-05.
//  Copyright © 2017 Jaison Bhatti. All rights reserved.
//

#import "Question.h"

@implementation Question

- (instancetype)init {
    self = [super init];
        if (self) {
            _rightValue = arc4random_uniform(91) + 10;
            _leftValue = arc4random_uniform(91) + 10;
            
            NSString * generateQuestion = [NSString stringWithFormat:@"%li + %li", (long)self.leftValue, (long)self.rightValue];
            
            _question = generateQuestion;
            
            _answer = (_leftValue + _rightValue);
            
            _startTime = [NSDate date];
        }
    return self;
}

// overriding getter
- (NSInteger)answer {
    _endTime = [NSDate date];
    return _answer;
}

//calculating the time difference
- (NSTimeInterval)answerTime {
    NSTimeInterval duration = [_endTime timeIntervalSinceDate:_startTime];
    return duration;
}

- (void) genQuestion {
    
}




@end
