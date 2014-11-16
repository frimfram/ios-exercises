//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    return [characterDictionary objectForKey:@"favorite drink"];
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    NSMutableArray *result = [@[] mutableCopy];
    
    for (NSDictionary *characterDictionary in charactersArray) {
        NSString *drinks = [self favoriteDrinkForStarTrekCharacterDictionary:characterDictionary];
        [result insertObject:drinks atIndex:result.count];
    }
    
    return result;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    NSMutableDictionary *result = [characterDictionary mutableCopy];
    [result setObject:@"some quote" forKey:@"quote"];
    return result;
}

@end
