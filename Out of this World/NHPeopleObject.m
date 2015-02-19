//
//  NHPeopleObject.m
//  Out of this World
//
//  Created by Neil Houselander on 19/02/2015.
//  Copyright (c) 2015 Neil Houselander. All rights reserved.
//

#import "NHPeopleObject.h"
#import "NHPeoplDictionaries.h"

@implementation NHPeopleObject

-(id) init
{
    self = [self initWithNames:nil];
    return self;
}



-(id)initWithNames:(NSDictionary *) nameData
{
    self = [super init];
    
    self.peopleString = [nameData objectForKey:PERSON_NAME];
    self.nickNameString = [nameData objectForKey:PERSON_NICKNAME];
    self.age = [[nameData objectForKey:PERSON_AGE]intValue];
    
    return self;
}

@end
