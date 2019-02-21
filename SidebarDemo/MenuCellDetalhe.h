//
//  MenuCellDetalhe.h
//  RestaurantNoahCo
//
//  Created by Fabricio Aguiar de Padua on 03/02/15.
//  Copyright (c) 2015 Pro Master Solution. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MenuCellDetalhe : UITableViewCell {
    
    
}

@property (weak, nonatomic) IBOutlet UILabel *NomePrato;
@property (weak, nonatomic) IBOutlet UILabel *PrecoPrato;
@property (weak, nonatomic) IBOutlet UILabel *DetalhePrato;

@property (weak, nonatomic) IBOutlet UILabel *Vegetarian;
@property (weak, nonatomic) IBOutlet UILabel *Gluten;
@property (weak, nonatomic) IBOutlet UILabel *extra;


@end
