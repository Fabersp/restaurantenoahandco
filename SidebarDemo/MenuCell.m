//
//  MenuCell.m
//  RestaurantNoahCo
//
//  Created by Fabricio Aguiar de Padua on 02/02/15.
//  Copyright (c) 2015 Pro Master Solution. All rights reserved.
//

#import "MenuCell.h"

@implementation MenuCell

@synthesize Titulo;
@synthesize Detalhe;
@synthesize Coments;


- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        
            }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

@end
