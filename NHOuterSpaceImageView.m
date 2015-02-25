//
//  NHOuterSpaceImageView.m
//  Out of this World
//
//  Created by Neil Houselander on 20/02/2015.
//  Copyright (c) 2015 Neil Houselander. All rights reserved.
//

#import "NHOuterSpaceImageView.h"


@interface NHOuterSpaceImageView ()

@end

@implementation NHOuterSpaceImageView

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.imageView = [[UIImageView alloc] initWithImage:self.spaceObject.spaceImage]; //set imageview property to something in resource
    
    self.scrollView.contentSize = self.imageView.frame.size; //set scrollview size to same as image
    [self.scrollView addSubview:self.imageView]; //add the image to the scrollview
    
    self.scrollView.delegate = self; //tell the scrollview that this class will be the delegate
    self.scrollView.maximumZoomScale = 2.0; //set th max & min zoom levels
    self.scrollView.minimumZoomScale = 0.1;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma Delegate Methods

-(UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    return self.imageView;  //return the object we want to zoom in on
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
