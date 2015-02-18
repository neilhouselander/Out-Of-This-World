//
//  NHPeoplDictionaries.m
//  Out of this World
//
//  Created by Neil Houselander on 16/02/2015.
//  Copyright (c) 2015 Neil Houselander. All rights reserved.
//

#import "NHPeoplDictionaries.h"

@implementation NHPeoplDictionaries

+(NSArray *) allKnownPeople
{
    NSMutableArray *peopleInformation = [[NSMutableArray alloc]init];
    
    NSDictionary *neilDictionary = @{PERSON_NAME : @"Neil", PERSON_NICKNAME : @"daddo", PERSON_AGE : @44};
    [peopleInformation addObject:neilDictionary];
    
    NSDictionary *lisaDictionary = @{PERSON_NAME : @"Lisa", PERSON_NICKNAME : @"Deeda", PERSON_AGE : @44};
    [peopleInformation addObject:lisaDictionary];
    
    NSDictionary *koraDictionary = @{PERSON_NAME : @"Kora", PERSON_NICKNAME : @"Small girl", PERSON_AGE : @16};
    [peopleInformation addObject:koraDictionary];
    
    return peopleInformation;
}

@end
