//
//  main.m
//  Maths
//
//  Created by Jaison Bhatti on 2017-09-05.
//  Copyright © 2017 Jaison Bhatti. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[]) {
        @autoreleasepool {
            BOOL gameOn = YES;
            
            ScoreKeeper *trackScore = [[ScoreKeeper alloc] init];
            QuestionManager *newQuestionManager = [[QuestionManager alloc] init];
            QuestionFactory *newQuestionFactory = [[QuestionFactory alloc] init];
            
            
            while (gameOn) {
                Question *createQuestion = [newQuestionFactory genRandomQuestion];
                [newQuestionManager.questions addObject:createQuestion];
                
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
                        [newQuestionManager timeOutput];
                    }   else {
                        NSLog(@"Wrong!");
                        trackScore.incorrect++;
                        [trackScore generateScore];
                        [newQuestionManager timeOutput];
                    }
                }
                
        }
    }
    return 0;
}

