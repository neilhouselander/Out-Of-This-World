//
//  NHOuterSpaceTableViewController.m
//  Out of this World
//
//  Created by Neil Houselander on 15/02/2015.
//  Copyright (c) 2015 Neil Houselander. All rights reserved.
//

#import "NHOuterSpaceTableViewController.h"
#import "NHFactory.h"
#import "NHPerson.h"
#import "NHPeoplDictionaries.h"
#import "AstronomicalData.h"
#import "NHSpaceObject.h"

@interface NHOuterSpaceTableViewController ()

@end

@implementation NHOuterSpaceTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NHFactory *factoryMaker = [[NHFactory alloc]init];
    self.thePeople = [factoryMaker makePerson];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
   
    self.planets = [[NSMutableArray alloc]init];
    //use the property, initialize a new mutable array
    
    for (NSMutableDictionary *planetData in [AstronomicalData allKnownPlanets])
    {
        NSString *imageName = [NSString stringWithFormat:@"%@.jpg", planetData [PLANET_NAME]];
      
        NHSpaceObject *planet = [[NHSpaceObject alloc]initWithData:planetData andImage:[UIImage imageNamed:imageName]];
        
        [self.planets addObject:planet];
           
        //pull all the dictionaries back and store in *planetData
        //new string imageName use the shorthand planetData [object for key PLANET_NAME] get the planet name out of the dictionary
        //so look inthe allKNownPLanets array, take the first object (Mercury dictionary) run the object for key method to find the object attached to the string-planet name
        //new SpaceObject object - call it planet, use the new initializer method to 1) set all the properties of the spaceobject object to that of the dictionary & then add the image
        //add the new object (with all the properties) to the planets mutableArray
        
        //rinse & repeat with next dictionary
     }
 
 
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    // Return the number of rows in the section.
   
        return [self.planets count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    
    NHSpaceObject *planet = self.planets [indexPath.row];
    
    cell.textLabel.text = planet.name;
    cell.detailTextLabel.text = planet.nickName;
    cell.imageView.image = planet.spaceImage;
    cell.backgroundColor = [UIColor clearColor];
    cell.textLabel.textColor = [UIColor whiteColor];
    cell.detailTextLabel.textColor = [UIColor colorWithRed:1 green:1 blue:0.5 alpha:1];
    
    //create local space object variable (planet)
    //set it equal to planets mutablearray property so you now access all the planets stored  
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
