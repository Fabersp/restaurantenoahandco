//
//  TVCMenu.m
//  RestaurantNoahCo
//
//  Created by Fabricio Aguiar de Padua on 27/01/15.
//  Copyright (c) 2015 Pro Master Solution. All rights reserved.
//

#import "TVCMenu.h"
#import "MenuCell.h"
#import "Recipe.h"
#import "TVCMenuDetalhe.h"
#import "SWRevealViewController.h"


#define RGB(r, g, b) [UIColor colorWithRed:(float)r / 255.0 green:(float)g / 255.0 blue:(float)b / 255.0 alpha:1.0]
#define RGBA(r, g, b, a) [UIColor colorWithRed:(float)r / 255.0 green:(float)g / 255.0 blue:(float)b / 255.0 alpha:a]

#define FONT_SOHO_STD(s) [UIFont fontWithName:@"SohoGothicStd" size:s]

@interface TVCMenu ()

@end



@implementation TVCMenu

@synthesize IndexSelectStr;
@synthesize ViewApper;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [ViewApper setFrame:[[UIScreen mainScreen] bounds]];
    
    [self.navigationController.view addSubview:ViewApper];
    

    
    SWRevealViewController *revealViewController = self.revealViewController;
    if ( revealViewController )
    {
        [self.sidebarButton setTarget: self.revealViewController];
        [self.sidebarButton setAction: @selector( revealToggle: )];
        [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    }

    
    UIImage *image = [UIImage imageNamed:@"brand"];
    self.tableView.backgroundColor = [UIColor colorWithPatternImage:image];
    
    UIImageView* img = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"LogoNovo"]];
    self.navigationItem.titleView = img;
    
    Recipe *recipe1 = [Recipe new];
    recipe1.name = @"Breakfast";
    recipe1.detail = @"Sered till 12 noon";
    recipe1.coments = @"Baked goods, Granola, Farm House, Vegetarian...";
    
    Recipe *recipe2 = [Recipe new];
    recipe2.name = @"Brunch mon";
    recipe2.detail = @"thurs till 2pm, fri – sun till 4pm";
    recipe2.coments = @"French Toast, Bacon Hash, Eggs Benedict...";
    
    Recipe *recipe3 = [Recipe new];
    recipe3.name = @"Light Bits";
    recipe3.detail = @"";
    recipe3.coments = @"Soup, Chicken Wings, Bowl of Chicken Wings...";
    
    Recipe *recipe4 = [Recipe new];
    recipe4.name = @"Salads & Sandwiches";
    recipe4.detail = @"";
    recipe4.coments = @"Super Salad, Chicken Chesar Salad, Whiter Salad...";
    
    Recipe *recipe5 = [Recipe new];
    recipe5.name = @"Noah's Mains";
    recipe5.detail = @"";
    recipe5.coments = @"Creamy Thai Chicken, Fish & Chips...";
    
    Recipe *recipe6 = [Recipe new];
    recipe6.name = @"Noah's Fab Flatbreads";
    recipe6.detail = @"";
    recipe6.coments = @"Buffalo Mozzarella, Chorizo & Somed Bacon...";
    
    Recipe *recipe7 = [Recipe new];
    recipe7.name = @"Noah's Burgers";
    recipe7.detail = @"served with a Choice of Rosemery or Cajun Fries";
    recipe7.coments = @"Noah's Classic Burger, Chilli Burger...";
    
    Recipe *recipe8 = [Recipe new];
    recipe8.name = @"Sides";
    recipe8.detail = @"";
    recipe8.coments = @"House Fries, Mixed Leaf Salad, Garlic Bread...";
    
    Recipe *recipe9 = [Recipe new];
    recipe9.name = @"Sweets";
    recipe9.detail = @"";
    recipe9.coments = @"Ice Cream Sundae, Warm Apple Crumble, Pancakes";
    
    Recipe *recipe10 = [Recipe new];
    recipe10.name = @"Gourmet Coffee & Tea";
    recipe10.detail = @"";
    recipe10.coments = @"Americano, Caffe Latte, Cappuccino, Mocha...";

    Recipe *recipe11 = [Recipe new];
    recipe11.name = @"Soft Drinks & Minerals";
    recipe11.detail = @"";
    recipe11.coments = @"Coke, Diet Coke, 7Up, Fanta Orange, Still...";
    
    Recipe *recipe12 = [Recipe new];
    recipe12.name = @"Juices & Smoothies";
    recipe12.detail = @"";
    recipe12.coments = @"Orange Joice, Apple & Pear Juice...";
    
    Recipe *recipe13 = [Recipe new];
    recipe13.name = @"Wines";
    recipe13.detail = @"By the Glass";
    recipe13.coments = @"Hawin Sauvignon Blanc, Hawin Cabernet-Sauvignon...";
    
    Recipe *recipe14 = [Recipe new];
    recipe14.name = @"Craft Beers";
    recipe14.detail = @"";
    recipe14.coments = @"Brooklyn Lager, Howling Gale Ale...";

    recipes = [NSArray arrayWithObjects:recipe1, recipe2, recipe3, recipe4, recipe5,recipe6, recipe7, recipe8, recipe9, recipe10, recipe11, recipe12, recipe13, recipe14, nil];
   
    // Remove table cell separator
    [self.tableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    
   // [[UINavigationBar appearance] setBarTintColor:[UIColor colorWithRed:252/255.0f green:248/255.0f blue:246/255.0f alpha:1]];
    
  //  UIImageView * Logo150 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Logo150.png"]];
 //   self.navigationItem.titleView = Logo150;
    
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return recipes.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
   
    MenuCell *cell = (MenuCell *)[tableView dequeueReusableCellWithIdentifier:@"CalagemCell"];
    
    
    [cell setBackgroundView:nil];
    [cell setBackgroundView:[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"cell"]]];
    
    //cell.Coments.textAlignment = NSTextAlignmentJustified;
    //cell.Coments.numberOfLines = 2;
    //[cell.Coments sizeToFit];
    //cell.Coments.lineBreakMode = NSLineBreakByWordWrapping;

    //cell.textLabel.text = [MenuPrincipal objectAtIndex:indexPath.row];
    Recipe *recipe = [recipes objectAtIndex:indexPath.row];
    
    cell.Titulo.text  = [recipe.name uppercaseString];
    
    cell.Detalhe.text = recipe.detail;
    
    cell.Coments.text = recipe.coments;
    
    return cell;
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    [self.tableView reloadData];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if ([[segue identifier] isEqualToString:@"Detalhe"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        Recipe *recipe = [recipes objectAtIndex:indexPath.row];
        
        NSString *titulo = [recipe.name uppercaseString];
        
        TVCMenuDetalhe * vc = segue.destinationViewController;
        vc.detailStr = titulo;
        vc.title = titulo;
        
        
    }
}

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
