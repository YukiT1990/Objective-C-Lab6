//
//  main.m
//  Lab6
//
//  Created by Yuki Tsukada on 2021/02/27.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "InputHandler.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        InputHandler *newInputHandler = [[InputHandler alloc] init];
        Dice *die1 = [[Dice alloc] init];
        Dice *die2 = [[Dice alloc] init];
        Dice *die3 = [[Dice alloc] init];
        Dice *die4 = [[Dice alloc] init];
        Dice *die5 = [[Dice alloc] init];
        
        NSLog(@"  %@   %@   %@   %@   %@  ", die1.returnDieFace, die2.returnDieFace, die3.returnDieFace, die4.returnDieFace, die5.returnDieFace);
//        NSLog(@" [%@] [%@] [%@] [%@] [%@] ", die1.returnDieFace, die2.returnDieFace, die3.returnDieFace, die4.returnDieFace, die5.returnDieFace);
        
        BOOL playingGame = YES;
        while (playingGame) {
            NSString *choiceInput = [newInputHandler getUserInput:(@"\n'roll' to roll the dice\n'hold' to hold a dice\n'reset' to un-hole all dice\n'done' to end the game\n'display' to show current stats\n")];
            if ([choiceInput isEqualToString:@"done"]) {
                break;
            } else if ([choiceInput isEqualToString:@"roll"]) {
                die1.currentValue = die1.randomizeValue;
                die2.currentValue = die2.randomizeValue;
                die3.currentValue = die3.randomizeValue;
                die4.currentValue = die4.randomizeValue;
                die5.currentValue = die5.randomizeValue;
                NSLog(@"  %@   %@   %@   %@   %@  ", die1.returnDieFace, die2.returnDieFace, die3.returnDieFace, die4.returnDieFace, die5.returnDieFace);
            } else {
                NSLog(@"Invalid input. Please try again.");
            }
            
        }
    }
    return 0;
}
