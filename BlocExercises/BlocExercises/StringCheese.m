//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    
    return [NSString stringWithFormat:@"My favorite cheese is %@.", cheeseName ];
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    NSString *result = cheeseName;
    NSRange range = [cheeseName rangeOfString:@"cheese" options:NSCaseInsensitiveSearch | NSBackwardsSearch];
    if(range.length > 0) {
        result = [cheeseName stringByReplacingCharactersInRange:range withString:@""];
    }
    result = [result stringByTrimmingCharactersInSet:[ NSCharacterSet whitespaceCharacterSet]];
    return result;
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    NSString * result = nil;
    if (cheeseCount == 1) {
        /* WORK HERE, ASSUMING THERE IS 1 CHEESE */
        result = @"1 cheese";
    } else {
        /* WORK HERE, ASSUMING THERE ARE 2+ CHEESES */
        result = [NSString stringWithFormat:@"%ld cheeses", (long)cheeseCount];
    }
    
    return result;
}

@end
