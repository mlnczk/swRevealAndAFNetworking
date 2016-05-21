//
//  ViewController.m
//  afnetworking
//
//  Created by Rafal Kampa on 17.05.2016.
//  Copyright © 2016 Rafal Kampa. All rights reserved.
//

#import "ViewController.h"
#import "APIManager.h"
#import "CollectionViewCell.h"
#import "Data.h"


@interface ViewController ()
@property (strong, nonatomic) IBOutlet UICollectionView *collectionView;
@property (nonatomic, strong) Data *data;
@property (nonatomic, strong) NSArray *array;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    APIManager *manager = [[APIManager alloc]init];
    [manager getOperationForAction:@"http://recipecloud-search.td-asp.com/recipes_tr/_search?q=ean:8690629229887&size=100" parameters:nil completion:^(NSURLSessionTask *operation, id responseObject) {
        NSLog(@"%@", responseObject);
        self.array = [NSArray new];
        self.array = responseObject[@"hits"][@"hits"];
        [self.collectionView reloadData];
 
    } failure:^(NSURLSessionTask *operation, id error) {
        NSLog(@"%@", error);
        
    }];
    
    [self.collectionView registerNib:[UINib nibWithNibName:[[CollectionViewCell class] description] bundle:nil] forCellWithReuseIdentifier:[[CollectionViewCell class]description]];
}


- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
    
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.array.count;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
        CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:[[CollectionViewCell class] description] forIndexPath:indexPath];
    
        Hits *hits = [[Hits alloc] initWithDictionary:self.array[indexPath.row] error:nil];
    
        [cell modellingThings:hits._source];
    
        return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    return CGSizeMake(self.view.frame.size.width, self.view.frame.size.height);
}

- (BOOL)collectionView:(UICollectionView *)collectionView canMoveItemAtIndexPath:(NSIndexPath *)indexPath NS_AVAILABLE_IOS(9_0){
    return YES;
}

@end
