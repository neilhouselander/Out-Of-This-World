//
//  NHSpaceObject.h
//  Out of this World
//
//  Created by Neil Houselander on 17/02/2015.
//  Copyright (c) 2015 Neil Houselander. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NHSpaceObject : NSObject

//set up properties for this new object - that happen to match the dictionary
@property (strong, nonatomic) NSString *name;
@property (nonatomic) float gravitationalForce;
@property (nonatomic) float diameter;
@property (nonatomic) float yearLength;
@property (nonatomic) float dayLength;
@property (nonatomic) float temperature;
@property (nonatomic) int numberOfMoons;
@property (strong, nonatomic) NSString *nickName;
@property (strong, nonatomic) NSString *interesingFact;

@property (strong, nonatomic) UIImage *spaceImage;


-(id) initWithData:(NSDictionary *)data andImage:(UIImage *)image;

@end
