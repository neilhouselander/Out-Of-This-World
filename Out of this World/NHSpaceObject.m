//
//  NHSpaceObject.m
//  Out of this World
//
//  Created by Neil Houselander on 17/02/2015.
//  Copyright (c) 2015 Neil Houselander. All rights reserved.
//

#import "NHSpaceObject.h"
#import "AstronomicalData.h"

@implementation NHSpaceObject

//override init - have to do this?
-(id) init
{
    self = [self initWithData:nil andImage:nil];
    
    return self;
}


-(id) initWithData:(NSDictionary *)data andImage:(UIImage *)image
{
    self = [super init];
    
    //each 1 of these is linking the property of this class e.g. self.name to the dictionary passed in e.g. mecuryDictionary [object for key:PLANET_NAME] e.g. find the object attached to the key in this case Mercury
    
    self.name = data [PLANET_NAME];
    self.gravitationalForce = [data [PLANET_GRAVITY] floatValue];
    self.diameter = [data [PLANET_DIAMETER]floatValue];
    self.yearLength = [data [PLANET_YEAR_LENGTH] floatValue];
    self.dayLength = [data [PLANET_DAY_LENGTH]floatValue];
    self.temperature = [data [PLANET_TEMPERATURE]floatValue];
    self.numberOfMoons = [data [PLANET_NUMBER_OF_MOONS]intValue];
    self.nickName = data[PLANET_NICKNAME];
    self.interesingFact = data [PLANET_INTERESTING_FACT];
    
    self.spaceImage = image;
    
    return self;
    
    //pass in a dictionary, use the shorthand for object for key>> data[PLANET_NAME] & assign back to the relevant property
  
}

@end
