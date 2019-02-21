//
//  PratosDetalheObj.h
//  RestaurantNoahCo
//
//  Created by Fabricio Aguiar de Padua on 03/02/15.
//  Copyright (c) 2015 Pro Master Solution. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PratosDetalheObj : NSObject


@property (nonatomic, strong) NSString *name; // name of recipe
@property (nonatomic, strong) NSString *detail; // recipe detail
@property (nonatomic, strong) NSString *price; // image filename of recipe

@property (nonatomic, strong) NSString *extra;
@property (nonatomic, strong) NSString *Vegetarian;
@property (nonatomic, strong) NSString *Gluten;


@end
