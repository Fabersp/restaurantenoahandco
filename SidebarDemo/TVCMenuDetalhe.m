//
//  TVCMenuDetalhe.m
//  RestaurantNoahCo
//
//  Created by Fabricio Aguiar de Padua on 03/02/15.
//  Copyright (c) 2015 Pro Master Solution. All rights reserved.
//

#import "TVCMenuDetalhe.h"
#import "PratosDetalheObj.h"
#import "MenuCellDetalhe.h"

@interface TVCMenuDetalhe ()

@end

@implementation TVCMenuDetalhe

@synthesize detailStr, imageIndex;


- (void)viewDidLoad {
    [super viewDidLoad];

   
    UIImage *image = [UIImage imageNamed:@"brand"];
    self.tableView.backgroundColor = [UIColor colorWithPatternImage:image];
    
    if ([detailStr isEqualToString:[@"Breakfast" uppercaseString]]) {
        
        imageIndex = [UIImage imageNamed:@"cellDetalheAzul"];
    
        // Create recipe array €
        PratosDetalheObj *Index1 = [PratosDetalheObj new];
        Index1.name = @"Baked goods";
        Index1.price = @"From €2.50";
        Index1.detail = @"Freshly Baked Scone, Butter & Preserve...";
        Index1.Vegetarian = @"V";
        Index1.Gluten     = @"NG";
        //Index1.extra      = @"Servedsdsds";
        
        // Create recipe array
        PratosDetalheObj *Index2 = [PratosDetalheObj new];
        Index2.name = @"Granola";
        Index2.price = @"€4.95";
        Index2.detail = @"Natural Irish Yogurt with Toasted...";
        
        // Create recipe array
        PratosDetalheObj *Index3 = [PratosDetalheObj new];
        Index3.name = @"Farm House Breakfast";
        Index3.price = @"€6.50";
        Index3.detail = @"Free – Range Egg any Style, Sausage, Back Bacon...";
        
        // Create recipe array
        PratosDetalheObj *Index4 = [PratosDetalheObj new];
        Index4.name = @"Noahs Vegetarian Breakfast";
        Index4.price = @"€7.50";
        Index4.detail = @"Free – Range Egg any Style, PortoBello Mushroom...";

        Index4.Vegetarian = @"V";
        Index4.Gluten     = @"NG";
        Index4.extra      = @"Potatoes";
        
        // Create recipe array
        PratosDetalheObj *Index5 = [PratosDetalheObj new];
        Index5.name = @"Noahs Full House Breakfast";
        Index5.price = @"€8.95";
        Index5.detail = @"Free – Range Egg any Style, Sausage...";
        
        Pratos = [NSArray arrayWithObjects:Index1, Index2, Index3, Index4, Index5, nil];
    } else
        if ([detailStr isEqualToString:[@"Brunch mon" uppercaseString]]) {
            
            imageIndex = [UIImage imageNamed:@"cellDetalheVerde"];
            
            PratosDetalheObj *Index1 = [PratosDetalheObj new];
            Index1.name = @"French Toast";
            Index1.price = @"€6.95";
            Index1.detail = @"Freshly Baked Scone, Butter & Preserve...";
            
            // Create recipe array
            PratosDetalheObj *Index2 = [PratosDetalheObj new];
            Index2.name = @"French Toast";
            Index2.price = @"€7.95";
            Index2.detail = @"Smoked Streaky Bacon, Maple Syrup ";
            
            // Create recipe array
            PratosDetalheObj *Index3 = [PratosDetalheObj new];
            Index3.name = @"French Toast";
            Index3.price = @"€6.50";
            Index3.detail = @"American Style Pancake With Berry Compote";
            
            // Create recipe array
            PratosDetalheObj *Index4 = [PratosDetalheObj new];
            Index4.name = @"French Toast";
            Index4.price = @"€7.50";
            Index4.detail = @"American Style Pancake With Smoked... ";
            
            // Create recipe array
            PratosDetalheObj *Index5 = [PratosDetalheObj new];
            Index5.name = @"Bacon Hash";
            Index5.price = @"€6.50";
            Index5.detail = @"Crispy Bacon, Chorizo, Red Onion, House Potatoes...";
            
            // Create recipe array
            PratosDetalheObj *Index6 = [PratosDetalheObj new];
            Index6.name = @"Eggs Benedict";
            Index6.price = @"€6.95";
            Index6.detail = @"Two Poached Free – Range Eggs, Smoked Ham...";
            
            // Create recipe array
            PratosDetalheObj *Index7 = [PratosDetalheObj new];
            Index7.name = @"Free – Range 3 Egg Omelette";
            Index7.price = @"€6.50";
            Index7.detail = @"Smoked Ham, Mushroom, Cheese & Herbs";
            
            // Create recipe array
            PratosDetalheObj *Index8 = [PratosDetalheObj new];
            Index8.name = @"Free – Range 3 Egg Omelette";
            Index8.price = @"€6.50";
            Index8.detail = @"Tomato, Baby Spinach, Cheese, Red Onion";
            
            // Create recipe array
            PratosDetalheObj *Index9 = [PratosDetalheObj new];
            Index9.name = @"Noahs Big Breakfast";
            Index9.price = @"€9.95";
            Index9.detail = @"Free – Range Egg any Stye Sausage, Back Bacon...";
            
            Pratos = [NSArray arrayWithObjects:Index1, Index2, Index3, Index4, Index5, Index6, Index7, Index8, Index9, nil];
        }else
            if ([detailStr isEqualToString:[@"Light Bits" uppercaseString]]) {
                
                imageIndex = [UIImage imageNamed:@"cellDetalheLaranja"];
                
                PratosDetalheObj *Index1 = [PratosDetalheObj new];
                Index1.name = @"Soup";
                Index1.price = @"€4.50";
                Index1.detail = @"Freshly Made from Market Produce...";
                
                // Create recipe array
                PratosDetalheObj *Index2 = [PratosDetalheObj new];
                Index2.name = @"Chicken Wings";
                Index2.price = @"€7.95";
                Index2.detail = @"NewYork-Style Spicy Wings";
                
                // Create recipe array
                PratosDetalheObj *Index3 = [PratosDetalheObj new];
                Index3.name = @"Bowl of Chicken Wings";
                Index3.price = @"€12.95";
                Index3.detail = @"NewYork-Style Spicy Wings";
                
                Pratos = [NSArray arrayWithObjects:Index1, Index2, Index3, nil];
            } else
                if ([detailStr isEqualToString:[@"Salads & Sandwiches" uppercaseString]]) {
                    
                    imageIndex = [UIImage imageNamed:@"cellDetalheRoxo"];
                    
                    PratosDetalheObj *Index1 = [PratosDetalheObj new];
                    Index1.name = @"Noahs Super Salad";
                    Index1.price = @"€9.95";
                    Index1.detail = @"";
                    
                    // Create recipe array
                    PratosDetalheObj *Index2 = [PratosDetalheObj new];
                    Index2.name = @"Chicken Chesar Salad";
                    Index2.price = @"€10.95";
                    Index2.detail = @"";
                    
                    // Create recipe array
                    PratosDetalheObj *Index3 = [PratosDetalheObj new];
                    Index3.name = @"Whiter Salad";
                    Index3.price = @"€11.95";
                    Index3.detail = @"";
                    
                    // Create recipe array
                    PratosDetalheObj *Index4 = [PratosDetalheObj new];
                    Index4.name = @"Noahs Club Sandwhich";
                    Index4.price = @"€9.95";
                    Index4.detail = @"";
                    
                    // Create recipe array
                    PratosDetalheObj *Index5 = [PratosDetalheObj new];
                    Index5.name = @"Noahs BBQ Pulled Pork Sandwich";
                    Index5.price = @"€9.95";
                    Index5.detail = @"";
                    
                    Pratos = [NSArray arrayWithObjects:Index1, Index2, Index3, Index4, Index5, nil];
                } else
                    if ([detailStr isEqualToString:[@"Noah's Mains" uppercaseString]]) {
                        
                        imageIndex = [UIImage imageNamed:@"cellDetalheAzul"];
                        
                        PratosDetalheObj *Index1 = [PratosDetalheObj new];
                        Index1.name = @"Creamy Thai Chicken";
                        Index1.price = @"€11.95";
                        Index1.detail = @"Marinated Chicken Breast, Green Beans...";
                        
                        // Create recipe array
                        PratosDetalheObj *Index2 = [PratosDetalheObj new];
                        Index2.name = @"Fish & Chips";
                        Index2.price = @"€12.50";
                        Index2.detail = @"Battered Haddock, Minted Pea Purce...";
                        
                        Pratos = [NSArray arrayWithObjects:Index1, Index2, nil];
                    }else
                        if ([detailStr isEqualToString:[@"Noah's Fab Flatbreads" uppercaseString]]) {
                            
                            imageIndex = [UIImage imageNamed:@"cellDetalheVerde"];
                            
                            PratosDetalheObj *Index1 = [PratosDetalheObj new];
                            Index1.name = @"Buffalo Mozzarella";
                            Index1.price = @"€7.95";
                            Index1.detail = @"Black Olives, Cheese, Tomato, Pesto";
                            
                            // Create recipe array
                            PratosDetalheObj *Index2 = [PratosDetalheObj new];
                            Index2.name = @"Chorizo & Somed Bacon";
                            Index2.price = @"€8.50";
                            Index2.detail = @"Tomato, Pesto, Cheese, Rocket";
                            
                            // Create recipe array
                            PratosDetalheObj *Index3 = [PratosDetalheObj new];
                            Index3.name = @"Goats Cheese";
                            Index3.price = @"€8.50";
                            Index3.detail = @"Marinated Roast Red Peppers, Red Onion...";
                            
                            // Create recipe array
                            PratosDetalheObj *Index4 = [PratosDetalheObj new];
                            Index4.name = @"BBQ Pulled Pork";
                            Index4.price = @"€7.50";
                            Index4.detail = @"Crispy Onions, BBQ Sauce, Cheese, Rocket";
                            
                            Pratos = [NSArray arrayWithObjects:Index1, Index2, Index3, Index4, nil];
                        }else
                            if ([detailStr isEqualToString:[@"Noah's Burgers" uppercaseString]]) {
                                
                                imageIndex = [UIImage imageNamed:@"cellDetalheLaranja"];
                                
                                //recipe7.detail = @"served with a Choice of Rosemery or Cajun Fries";
                                
                                PratosDetalheObj *Index1 = [PratosDetalheObj new];
                                Index1.name = @"Noah's Classic Burger - Beff or Chicken";
                                Index1.price = @"€9.95";
                                Index1.detail = @"Noah's Classic Burger, Brioche Bun, Mayo...";
                                
                                // Create recipe array
                                PratosDetalheObj *Index2 = [PratosDetalheObj new];
                                Index2.name = @"Chilli Burger - Beff or Chicken";
                                Index2.price = @"€10.50";
                                Index2.detail = @"Chilli Burger – Topped with a Creamy, Spicy..";
                                
                                // Create recipe array
                                PratosDetalheObj *Index3 = [PratosDetalheObj new];
                                Index3.name = @"Cheese Burger - Beff or Chicken";
                                Index3.price = @"€10.50";
                                Index3.detail = @"";
                                
                                // Create recipe array
                                PratosDetalheObj *Index4 = [PratosDetalheObj new];
                                Index4.name = @"Cheese and Bacon Burger - Beff or Chicken";
                                Index4.price = @"€11.95";
                                Index4.detail = @"";
                                
                                // Create recipe array
                                PratosDetalheObj *Index5 = [PratosDetalheObj new];
                                Index5.name = @"BBQ, Cheese and Bacon Burger - Beff or Chicken";
                                Index5.price = @"€11.95";
                                Index5.detail = @"";
                                
                                // Create recipe array
                                PratosDetalheObj *Index6 = [PratosDetalheObj new];
                                Index6.name = @"Portobello Mushroom Burger";
                                Index6.price = @"€6.95";
                                Index6.detail = @"Fillet with Gruyere Cheese, Brioche Bun...";
                                
                                Pratos = [NSArray arrayWithObjects:Index1, Index2, Index3, Index4, Index5, Index6, nil];
                            } else
                                if ([detailStr isEqualToString:[@"Sides" uppercaseString]]) {
                                    
                                    imageIndex = [UIImage imageNamed:@"cellDetalheRoxo"];
                                    
                                    PratosDetalheObj *Index1 = [PratosDetalheObj new];
                                    Index1.name = @"House Fries";
                                    Index1.price = @"€2.95";
                                    Index1.detail = @"";
                                    
                                    // Create recipe array
                                    PratosDetalheObj *Index2 = [PratosDetalheObj new];
                                    Index2.name = @"Mixed Leaf Salad";
                                    Index2.price = @"€2.95";
                                    Index2.detail = @"";
                                    
                                    // Create recipe array
                                    PratosDetalheObj *Index3 = [PratosDetalheObj new];
                                    Index3.name = @"Garlic Bread";
                                    Index3.price = @"€2.95";
                                    Index3.detail = @"";
                                    
                                    // Create recipe array
                                    PratosDetalheObj *Index4 = [PratosDetalheObj new];
                                    Index4.name = @"Penne Pasta";
                                    Index4.price = @"€2.95";
                                    Index4.detail = @"";
                                    
                                    // Create recipe array
                                    PratosDetalheObj *Index5 = [PratosDetalheObj new];
                                    Index5.name = @"Sauté House Potatoes";
                                    Index5.price = @"€2.95";
                                    Index5.detail = @"";
                                    
                                    // Create recipe array
                                    PratosDetalheObj *Index6 = [PratosDetalheObj new];
                                    Index6.name = @"Onion Rings";
                                    Index6.price = @"€2.95";
                                    Index6.detail = @"";
                                    
                                    Pratos = [NSArray arrayWithObjects:Index1, Index2, Index3, Index4, Index5, Index6, nil];
                                } else
                                    if ([detailStr isEqualToString:[@"Sweets" uppercaseString]]) {
                                        
                                        imageIndex = [UIImage imageNamed:@"cellDetalheAzul"];
                                        
                                        PratosDetalheObj *Index1 = [PratosDetalheObj new];
                                        Index1.name = @"Ice Cream Sundae";
                                        Index1.price = @"€4.95";
                                        Index1.detail = @"";
                                        
                                        // Create recipe array
                                        PratosDetalheObj *Index2 = [PratosDetalheObj new];
                                        Index2.name = @"Warm Apple Crumble";
                                        Index2.price = @"€4.95";
                                        Index2.detail = @"";
                                        
                                        // Create recipe array
                                        PratosDetalheObj *Index3 = [PratosDetalheObj new];
                                        Index3.name = @"Baked New York Style Cheese Cake";
                                        Index3.price = @"€4.95";
                                        Index3.detail = @"";
                                        
                                        // Create recipe array
                                        PratosDetalheObj *Index4 = [PratosDetalheObj new];
                                        Index4.name = @"Chocolate Pancakes";
                                        Index4.price = @"€4.95";
                                        Index4.detail = @"";
                                        
                                        Pratos = [NSArray arrayWithObjects:Index1, Index2, Index3, Index4, nil];
                                    } else
                                        if ([detailStr isEqualToString:[@"Gourmet Coffee & Tea" uppercaseString]]) {
                                            
                                            imageIndex = [UIImage imageNamed:@"cellDetalheVerde"];
                                            
                                            // Create recipe array
                                            PratosDetalheObj *Index2 = [PratosDetalheObj new];
                                            Index2.name = @"Americano";
                                            Index2.price = @"€2.50 | €2.85";
                                            Index2.detail = @"";
                                            
                                            // Create recipe array
                                            PratosDetalheObj *Index3 = [PratosDetalheObj new];
                                            Index3.name = @"Caffe Latte";
                                            Index3.price = @"€2.85 | €3.15";
                                            Index3.detail = @"";
                                            
                                            // Create recipe array
                                            PratosDetalheObj *Index4 = [PratosDetalheObj new];
                                            Index4.name = @"Cappuccino";
                                            Index4.price = @"€2.85 | €3.15";
                                            Index4.detail = @"";
                                            
                                            // Create recipe array
                                            PratosDetalheObj *Index5 = [PratosDetalheObj new];
                                            Index5.name = @"Mocha";
                                            Index5.price = @"€3.25 | €3.45";
                                            Index5.detail = @"";
                                            
                                            // Create recipe array
                                            PratosDetalheObj *Index6 = [PratosDetalheObj new];
                                            Index6.name = @"Hot Chocolate";
                                            Index6.price = @"€3.00 | €3.45";
                                            Index6.detail = @"";
                                            
                                            // Create recipe array
                                            PratosDetalheObj *Index7 = [PratosDetalheObj new];
                                            Index7.name = @"Expresso";
                                            Index7.price = @"€2.25";
                                            Index7.detail = @"";
                                            
                                            // Create recipe array
                                            PratosDetalheObj *Index8 = [PratosDetalheObj new];
                                            Index8.name = @"Doble Expresso";
                                            Index8.price = @"€2.50";
                                            Index8.detail = @"";
                                            
                                            PratosDetalheObj *Index9 = [PratosDetalheObj new];
                                            Index9.name = @"Flat White";
                                            Index9.price = @"€2.85";
                                            Index9.detail = @"";

                                            // Create recipe array
                                            PratosDetalheObj *Index10 = [PratosDetalheObj new];
                                            Index10.name = @"Cortado";
                                            Index10.price = @"€2.85";
                                            Index10.detail = @"";
                                            
                                            // Create recipe array
                                            PratosDetalheObj *Index11 = [PratosDetalheObj new];
                                            Index11.name = @"Freshly Brewed Tea";
                                            Index11.price = @"€2.20";
                                            Index11.detail = @"";

                                            // Create recipe array
                                            PratosDetalheObj *Index12 = [PratosDetalheObj new];
                                            Index12.name = @"Speciality Fruit Teas";
                                            Index12.price = @"€2.40";
                                            Index12.detail = @"";
                                            
                                            // Create recipe array
                                            PratosDetalheObj *Index13 = [PratosDetalheObj new];
                                            Index13.name = @"Extras: Coffee Shot - Syrup Shot";
                                            Index13.price = @"€0.50";
                                            Index13.detail = @"";

                                            Pratos = [NSArray arrayWithObjects: Index2, Index3, Index4, Index5, Index6, Index7, Index8, Index9, Index10, Index11, Index12, Index13, nil];
                                        } else
                                            if ([detailStr isEqualToString:[@"Soft Drinks & Minerals" uppercaseString]]) {
                                                
                                                imageIndex = [UIImage imageNamed:@"cellDetalheLaranja"];
                                                
                                                PratosDetalheObj *Index1 = [PratosDetalheObj new];
                                                Index1.name = @"Coke, Diet Coke, 7Up, Fanta Orange";
                                                Index1.price = @"€2.45";
                                                Index1.detail = @"";
                                                
                                                // Create recipe array
                                                PratosDetalheObj *Index2 = [PratosDetalheObj new];
                                                Index2.name = @"Still, Sparkiling Water 330ml";
                                                Index2.price = @"€2.20";
                                                Index2.detail = @"";
                                                
                                                // Create recipe array
                                                PratosDetalheObj *Index3 = [PratosDetalheObj new];
                                                Index3.name = @"DP Coonelly Cloudy Lemonade";
                                                Index3.price = @"€2.75";
                                                Index3.detail = @"";
                                                
                                                // Create recipe array
                                                PratosDetalheObj *Index4 = [PratosDetalheObj new];
                                                Index4.name = @"Lorina Pink Lemonade";
                                                Index4.price = @"€2.75";
                                                Index4.detail = @"";
                                                
                                                // Create recipe array
                                                PratosDetalheObj *Index5 = [PratosDetalheObj new];
                                                Index5.name = @"San Pellegrino Limonata (can)";
                                                Index5.price = @"€2.75";
                                                Index5.detail = @"";
                                                
                                                // Create recipe array
                                                PratosDetalheObj *Index6 = [PratosDetalheObj new];
                                                Index6.name = @"San Pellegrino Aranciata (can)";
                                                Index6.price = @"€2.75";
                                                Index6.detail = @"";
                                                
                                                Pratos = [NSArray arrayWithObjects:Index1, Index2, Index3, Index4, Index5, Index6, nil];
                                            } else
                                                if ([detailStr isEqualToString:[@"Juices & Smoothies" uppercaseString]]) {
                                                    
                                                    imageIndex = [UIImage imageNamed:@"cellDetalheRoxo"];
                                                
                                                    PratosDetalheObj *Index1 = [PratosDetalheObj new];
                                                    Index1.name = @"Orange Joice";
                                                    Index1.price = @"€2.45";
                                                    Index1.detail = @"";
                                                    
                                                    // Create recipe array
                                                    PratosDetalheObj *Index2 = [PratosDetalheObj new];
                                                    Index2.name = @"Apple & Pear Juice";
                                                    Index2.price = @"€2.45";
                                                    Index2.detail = @"";
                                                    
                                                    // Create recipe array
                                                    PratosDetalheObj *Index3 = [PratosDetalheObj new];
                                                    Index3.name = @"Mango Smoothie";
                                                    Index3.price = @"€3.25";
                                                    Index3.detail = @"";
                                                    
                                                    // Create recipe array
                                                    PratosDetalheObj *Index4 = [PratosDetalheObj new];
                                                    Index4.name = @"StrawBerry Smoothie";
                                                    Index4.price = @"€3.25";
                                                    Index4.detail = @"";
                                                    
                                                    Pratos = [NSArray arrayWithObjects:Index1, Index2, Index3, Index4, nil];
                                                }
                                                else
                                                    if ([detailStr isEqualToString:[@"Wines" uppercaseString]]) {
                                                        
                                                        imageIndex = [UIImage imageNamed:@"cellDetalheAzul"];
                                                        
                                                        PratosDetalheObj *Index1 = [PratosDetalheObj new];
                                                        Index1.name = @"Hawin Sauvignon Blanc";
                                                        Index1.price = @"€5.95";
                                                        Index1.detail = @"Private Reserve - Chile";
                                                        
                                                        // Create recipe array
                                                        PratosDetalheObj *Index2 = [PratosDetalheObj new];
                                                        Index2.name = @"Hawin Cabernet-Sauvignon ";
                                                        Index2.price = @"€5.95";
                                                        Index2.detail = @"Private Reserve - Chile";
                                                        
                                                        // Create recipe array
                                                        PratosDetalheObj *Index3 = [PratosDetalheObj new];
                                                        Index3.name = @"Zagalia Pinot Grigio";
                                                        Index3.price = @"€5.95";
                                                        Index3.detail = @"Italy";
                                                        
                                                        // Create recipe array
                                                        PratosDetalheObj *Index4 = [PratosDetalheObj new];
                                                        Index4.name = @"Babington Book Shiraz";
                                                        Index4.price = @"€5.95";
                                                        Index4.detail = @"Australia";
                                                    
                                                        Pratos = [NSArray arrayWithObjects:Index1, Index2, Index3, Index4, nil];
                                                    } else
                                                        if ([detailStr isEqualToString:[@"Craft Beers" uppercaseString]]) {
                                                            
                                                            imageIndex = [UIImage imageNamed:@"cellDetalheVerde"];
                                                            
                                                            PratosDetalheObj *Index1 = [PratosDetalheObj new];
                                                            Index1.name = @"Brooklyn Lager";
                                                            Index1.price = @"€4.95";
                                                            Index1.detail = @"";
                                                            
                                                            // Create recipe array
                                                            PratosDetalheObj *Index2 = [PratosDetalheObj new];
                                                            Index2.name = @"Sunburnt Irish Red Ale";
                                                            Index2.price = @"€4.95";
                                                            Index2.detail = @"";
                                                            
                                                            // Create recipe array
                                                            PratosDetalheObj *Index3 = [PratosDetalheObj new];
                                                            Index3.name = @"Corona";
                                                            Index3.price = @"€4.95";
                                                            Index3.detail = @"";
                                                            
                                                            Pratos = [NSArray arrayWithObjects:Index1, Index2, Index3,  nil];
                                                        }
    
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
    return Pratos.count;
}

/*-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 100;
} */

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    MenuCellDetalhe *cell = (MenuCellDetalhe *)[tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    
    [cell setBackgroundView:nil];
    [cell setBackgroundView:[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"cellDetalheAzul"]]];
    
    //cell.Coments.textAlignment = NSTextAlignmentJustified;
    
    
    //cell.textLabel.text = [MenuPrincipal objectAtIndex:indexPath.row];
    PratosDetalheObj *prato = [Pratos objectAtIndex:indexPath.row];
    
    cell.NomePrato.text  = [prato.name uppercaseString];
    cell.DetalhePrato.text = prato.detail;
    cell.PrecoPrato.text = prato.price;
    cell.extra.text      = prato.extra;
    cell.Vegetarian.text = prato.Vegetarian;
    cell.Gluten.text     = prato.Gluten;

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
