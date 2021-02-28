//
//  main.m
//  Lab6
//
//  Created by Yuki Tsukada on 2021/02/27.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "InputHandler.h"
#import "GameController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        InputHandler *newInputHandler = [[InputHandler alloc] init];
        Dice *die1 = [[Dice alloc] init];
        Dice *die2 = [[Dice alloc] init];
        Dice *die3 = [[Dice alloc] init];
        Dice *die4 = [[Dice alloc] init];
        Dice *die5 = [[Dice alloc] init];
        NSMutableArray *fiveDiceContainer = [NSMutableArray arrayWithObjects:die1, die2, die3, die4, die5, nil];
        NSMutableDictionary *heldDice = [NSMutableDictionary new];
        GameController *newGameController = [[GameController alloc] init];
        
        
        NSLog(@"%@ %@ %@ %@ %@", die1.returnDieFace, die2.returnDieFace, die3.returnDieFace, die4.returnDieFace, die5.returnDieFace);
        
        BOOL playingGame = YES;
        while (playingGame) {
            NSString *choiceInput = [newInputHandler getUserInput:@"\n'roll' to roll the dice\n'hold' to hold a dice\n'reset' to un-hole all dice\n'done' to end the game\n'display' to show current stats\n"];
            if ([choiceInput isEqualToString:@"done"]) {
                playingGame = NO;
            } else if ([choiceInput isEqualToString:@"roll"]) {
                int i = 1;
//                NSArray *heldDiceNumbers = [heldDice allKeys];
                for (Dice *eachDie in fiveDiceContainer) {
                    if (eachDie.isHeld == true) {
                        continue;
                    }
                    eachDie.currentValue = die1.randomizeValue;
                    i++;
                }
                die1 = fiveDiceContainer[0];
                die2 = fiveDiceContainer[1];
                die3 = fiveDiceContainer[2];
                die4 = fiveDiceContainer[3];
                die5 = fiveDiceContainer[4];
                NSLog(@"%@ %@ %@ %@ %@", die1.returnDieFace, die2.returnDieFace, die3.returnDieFace, die4.returnDieFace, die5.returnDieFace);
            } else if ([choiceInput isEqualToString:@"hold"]) {
                BOOL underChoosingDieToHold = YES;
                while (underChoosingDieToHold) {
                    NSString *numberToHold = [newInputHandler getUserInput:[NSString stringWithFormat:@"\nInput the number of a die to hold\n'finish' to complete choosing\n 1   2   3   4   5 \n%@ %@ %@ %@ %@", die1.returnDieFace, die2.returnDieFace, die3.returnDieFace, die4.returnDieFace, die5.returnDieFace]];
                    
                    newGameController.fiveDiceContainer = fiveDiceContainer;
                    newGameController.heldDice = heldDice;
                    
                    if ([numberToHold isEqualToString:@"finish"]) {
                        underChoosingDieToHold = NO;
                    } else if ([numberToHold isEqualToString:@"1"]) {
                        die1 = fiveDiceContainer[0];
                        die1.isHeld = true;
                        heldDice[@1] = die1;
                    } else if ([numberToHold isEqualToString:@"2"]) {
                        die2 = fiveDiceContainer[1];
                        die2.isHeld = true;
                        heldDice[@2] = die2;
                    } else if ([numberToHold isEqualToString:@"3"]) {
                        die3 = fiveDiceContainer[2];
                        die3.isHeld = true;
                        heldDice[@3] = die3;
                    } else if ([numberToHold isEqualToString:@"4"]) {
                        die4 = fiveDiceContainer[3];
                        die4.isHeld = true;
                        heldDice[@4] = die4;
                    } else if ([numberToHold isEqualToString:@"5"]) {
                        die5 = fiveDiceContainer[4];
                        die5.isHeld = true;
                        heldDice[@5] = die5;
                    }
                }
                
                
            } else {
                NSLog(@"Invalid input. Please try again.");
            }
            
        }
    }
    return 0;
}
