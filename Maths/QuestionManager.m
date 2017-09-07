//
//  QuestionManager.m
//  Maths
//
//  Created by Jaison Bhatti on 2017-09-06.
//  Copyright © 2017 Jaison Bhatti. All rights reserved.
//

#import "QuestionManager.h"


@implementation QuestionManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questions = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSString *) timeOutput {
    int totalTime = 0;
    int avgTime = 0;
    
    for (int i = 0; i < self.questions.count; i++) {
        int time = [self.questions[i] answerTime];
        totalTime = totalTime + time;
        avgTime = (time * i) / (i + 1);
    }
    
    NSString * timeCheck;
    NSLog(@"total time: %is, average time:%is", totalTime, avgTime);
    return timeCheck;
}

@end
