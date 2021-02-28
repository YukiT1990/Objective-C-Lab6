//
//  main.m
//  Lab6
//
//  Created by Yuki Tsukada on 2021/02/27.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Dice *die1 = [[Dice alloc] init];
        Dice *die2 = [[Dice alloc] init];
        Dice *die3 = [[Dice alloc] init];
        Dice *die4 = [[Dice alloc] init];
        Dice *die5 = [[Dice alloc] init];
        
        NSLog(@"  %@   %@   %@   %@   %@  ", die1.returnDieFace, die2.returnDieFace, die3.returnDieFace, die4.returnDieFace, die5.returnDieFace);
//        NSLog(@" [%@] [%@] [%@] [%@] [%@] ", die1.returnDieFace, die2.returnDieFace, die3.returnDieFace, die4.returnDieFace, die5.returnDieFace);
    }
    return 0;
}
