//
//  main.m
//  Maths
//
//  Created by Jaison Bhatti on 2017-09-05.
//  Copyright © 2017 Jaison Bhatti. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL mathsGame = YES;
        
        while ((mathsGame = YES)) {
            
            char inputChars[255];
            printf("Input a string: ");
            // limit input to max 255 characters
            fgets(inputChars, 255, stdin);
            
            NSString *inputString = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
            NSLog(@"%@", inputString);
        }
        
    }
    return 0;
}