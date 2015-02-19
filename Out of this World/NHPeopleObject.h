//
//  NHPeopleObject.h
//  Out of this World
//
//  Created by Neil Houselander on 19/02/2015.
//  Copyright (c) 2015 Neil Houselander. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NHPeopleObject : NSObject

@property (strong, nonatomic)NSString *peopleString;
@property (strong, nonatomic)NSString *nickNameString;
@property (nonatomic) int age;

-(id)initWithNames:(NSDictionary *) nameData;

@end
