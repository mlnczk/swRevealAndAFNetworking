//
//  CollectionViewCell.m
//  afnetworking
//
//  Created by Marcin Mielniczek on 5/21/16.
//  Copyright © 2016 Rafal Kampa. All rights reserved.
//

#import "CollectionViewCell.h"

@interface CollectionViewCell()
@property (strong, nonatomic) IBOutlet UILabel *labelTitle;
@property (strong, nonatomic) IBOutlet UIImageView *imageView;


@end
@implementation CollectionViewCell

- (void)awakeFromNib {
    // Initialization code
}

-(void)modellingThings:(Source *)source{
    self.labelTitle.text = source.title;
    //OBRAZEK Z URL//
    self.imageView.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:source.image_small]]];

}

@end
