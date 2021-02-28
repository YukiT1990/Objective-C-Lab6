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

        GameController *newGameController = [[GameController alloc] init];
        newGameController.fiveDiceContainer = [NSMutableArray arrayWithObjects:die1, die2, die3, die4, die5, nil];
        
        NSLog(@"%@ %@ %@ %@ %@", die1.returnDieFace, die2.returnDieFace, die3.returnDieFace, die4.returnDieFace, die5.returnDieFace);
        
        BOOL playingGame = YES;
        while (playingGame) {
            NSString *choiceInput = [newInputHandler getUserInput:@"\n'roll' to roll the dice\n'hold' to hold a dice\n'reset' to un-hole all dice\n'done' to end the game\n'display' to show current stats\n"];
            if ([choiceInput isEqualToString:@"done"]) {
                playingGame = NO;
            } else if ([choiceInput isEqualToString:@"roll"]) {
                int i = 1;
//                NSArray *heldDiceNumbers = [newGameController.heldDice allKeys];
                for (Dice *eachDie in newGameController.fiveDiceContainer) {
                    if (eachDie.isHeld == true) {
                        continue;
                    }
                    eachDie.currentValue = die1.randomizeValue;
                    i++;
                }
                die1 = newGameController.fiveDiceContainer[0];
                die2 = newGameController.fiveDiceContainer[1];
                die3 = newGameController.fiveDiceContainer[2];
                die4 = newGameController.fiveDiceContainer[3];
                die5 = newGameController.fiveDiceContainer[4];
                NSLog(@"%@ %@ %@ %@ %@", die1.returnDieFace, die2.returnDieFace, die3.returnDieFace, die4.returnDieFace, die5.returnDieFace);
            } else if ([choiceInput isEqualToString:@"hold"]) {
                BOOL underChoosingDieToHold = YES;
                while (underChoosingDieToHold) {
                    NSString *numberToHold = [newInputHandler getUserInput:[NSString stringWithFormat:@"\nInput the number of a die to hold\n'finish' to complete choosing\n 1   2   3   4   5 \n%@ %@ %@ %@ %@", die1.returnDieFace, die2.returnDieFace, die3.returnDieFace, die4.returnDieFace, die5.returnDieFace]];
                    
                    
                    if ([numberToHold isEqualToString:@"finish"]) {
                        underChoosingDieToHold = NO;
                    } else if ([numberToHold isEqualToString:@"1"]) {
                        [newGameController holdDie:numberToHold];
                        die1 = newGameController.fiveDiceContainer[0];
                    } else if ([numberToHold isEqualToString:@"2"]) {
                        [newGameController holdDie:numberToHold];
                        die2 = newGameController.fiveDiceContainer[1];
                    } else if ([numberToHold isEqualToString:@"3"]) {
                        [newGameController holdDie:numberToHold];
                        die3 = newGameController.fiveDiceContainer[2];
                    } else if ([numberToHold isEqualToString:@"4"]) {
                        [newGameController holdDie:numberToHold];
                        die4 = newGameController.fiveDiceContainer[3];
                    } else if ([numberToHold isEqualToString:@"5"]) {
                        [newGameController holdDie:numberToHold];
                        die5 = newGameController.fiveDiceContainer[4];
                    } else {
                        NSLog(@"Invalid input. Please try again.");
                    }
                }
                
                
            } else {
                NSLog(@"Invalid input. Please try again.");
            }
            
        }
    }
    return 0;
}
