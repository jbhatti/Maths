//
//  main.m
//  Maths
//
//  Created by Jaison Bhatti on 2017-09-05.
//  Copyright © 2017 Jaison Bhatti. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"

int main(int argc, const char * argv[]) {
        @autoreleasepool {
            BOOL gameOn = YES;
            
            ScoreKeeper *trackScore = [[ScoreKeeper alloc] init];
            
            while (gameOn) {
                AdditionQuestion *createQuestion = [[AdditionQuestion alloc] init];
                NSLog(@"%@", createQuestion.question);
                
                InputHandler *parsedInput = [[InputHandler alloc] init];
                NSString *parsedAnswer = [parsedInput parseAnswer];
                
                
                if ([parsedAnswer isEqual: @"quit"]) {
                    break;
                } else {
                    NSInteger userAnswerInInteger = [parsedAnswer intValue];
                    if (createQuestion.answer == userAnswerInInteger) {
                        NSLog(@"Right!");
                        trackScore.correct++;
                        [trackScore generateScore];
                    }   else {
                        NSLog(@"Wrong!");
                        trackScore.incorrect++;
                        [trackScore generateScore];
                    }
                }
                
        }
    }
    return 0;
}

