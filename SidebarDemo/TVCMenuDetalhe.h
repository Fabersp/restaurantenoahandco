//
//  TVCMenuDetalhe.h
//  RestaurantNoahCo
//
//  Created by Fabricio Aguiar de Padua on 03/02/15.
//  Copyright (c) 2015 Pro Master Solution. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TVCMenuDetalhe : UITableViewController{
    NSArray * Pratos;
    NSString * detailStr;
    UIImage * imageIndex;
    
    
}

@property (strong, nonatomic) id detailItem;
@property (nonatomic, retain) NSString * detailStr;
@property (nonatomic, retain) UIImage * imageIndex;










@end
