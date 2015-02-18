//
//  NHFactory.m
//  Out of this World
//
//  Created by Neil Houselander on 15/02/2015.
//  Copyright (c) 2015 Neil Houselander. All rights reserved.
//

#import "NHFactory.h"

@implementation NHFactory

-(NSArray *) makePerson
{
    NHPerson *person1 = [[NHPerson alloc]init];
    person1.name = @"Neil";
    person1.age = 44;
    
    NHPerson *person2 = [[NHPerson alloc]init];
    person2.name = @"Lisa";
    person2.age = 44;
    
    NHPerson *person3 = [[NHPerson alloc]init];
    person3.name = @"Kora";
    person3.age = 16;
    
    NSArray *people = [[NSArray alloc]initWithObjects:person1, person2, person3, nil];
    
    return people;
}

@end
