//
//  Source.h
//  afnetworking
//
//  Created by Marcin Mielniczek on 5/21/16.
//  Copyright © 2016 Rafal Kampa. All rights reserved.
//

#import <JSONModel/JSONModel.h>
#import "Kategoria.h"
#import "Ean.h"
#import "Occasion.h"
#import "Keywords.h"
#import "Videos.h"

@protocol Source

@end
@interface Source : JSONModel

@property (nonatomic, strong)NSString *description;
@property (nonatomic, strong)NSArray<Kategoria> *category;
@property (nonatomic, strong)NSString *recipe;
@property (nonatomic, strong)NSString *image_medium;
@property (nonatomic, strong)NSString *image_small;
@property (nonatomic, strong)NSString *unid;
@property (nonatomic, strong)NSString *created_at;
@property (nonatomic, strong)NSArray<Ean> *ean;
@property (nonatomic, strong)NSArray<Occasion> *occasion;
@property (nonatomic, strong)NSString *title;
@property (nonatomic, strong)NSString *image;
@property (nonatomic, strong)NSArray<Keywords> *keywords;
@property (nonatomic, strong)NSString *language;
@property (nonatomic, strong)NSString *preperation_time;
@property (nonatomic, strong)NSString *difficulty;
@property (nonatomic, strong)NSString *country;
@property (nonatomic, strong)NSArray<Videos> *videos;
@property (nonatomic, assign)NSNumber *has_video;


@end
