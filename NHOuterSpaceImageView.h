//
//  NHOuterSpaceImageView.h
//  Out of this World
//
//  Created by Neil Houselander on 20/02/2015.
//  Copyright (c) 2015 Neil Houselander. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NHSpaceObject.h"

@interface NHOuterSpaceImageView : UIViewController <UIScrollViewDelegate> //remember the delegate

//connect the scroll view
//create the property to hold the image - tats what this view is about
//create an space object property

@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;

@property (strong, nonatomic) UIImageView *imageView;
@property (strong, nonatomic) NHSpaceObject *spaceObject;

@end
