//
//  ScoreKeeper.m
//  Maths
//
//  Created by Jaison Bhatti on 2017-09-06.
//  Copyright © 2017 Jaison Bhatti. All rights reserved.
//

#import "ScoreKeeper.h"
#import "InputHandler.h"

@implementation ScoreKeeper

- (instancetype) init {
    if (self = [super init]) {
        _correct = 0;
        _incorrect = 0;
        
        
    }
    return self;
}

- (void) generateScore {
    
//    float totalScore;
//    totalScore = (((_correct) / (_incorrect + _correct)) * 100);
    
    int attempts;
    attempts = (_incorrect + _correct);
    _total = (((_correct) / attempts) * 100);
    NSLog(@"score: %i right, %i wrong ---- %.1f", self.correct, self.incorrect, self.total);
}

@end
