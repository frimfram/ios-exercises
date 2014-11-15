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
    NSMutableString *count = [NSMutableString stringWithFormat:@"%ld cheese", (long)cheeseCount];
    
    if(cheeseCount != 1) {
        [count appendString:@"s"];
    }
    return count;
}

@end
