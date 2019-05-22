//
//  GTVideoViewController.m
//  SimpleApp
//
//  Created by bin jiang on 2019/5/20.
//  Copyright © 2019 bin jiang. All rights reserved.
//

#import "GTVideoViewController.h"

@interface GTVideoViewController ()<UICollectionViewDataSource,UICollectionViewDelegate>

@end

@implementation GTVideoViewController

-(instancetype)init{
    self = [super init];
    if (self) {
        self.view.backgroundColor = [UIColor yellowColor];
        self.tabBarItem.title = @"视频";
        self.tabBarItem.image = [UIImage imageNamed:@"icon.bundle/video@2x.png"];
        self.tabBarItem.selectedImage = [UIImage imageNamed:@"icon.bundle/video_selected@2x.png"];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
    
    flowLayout.minimumLineSpacing = 5;
    flowLayout.minimumInteritemSpacing = 10;
    flowLayout.itemSize = CGSizeMake((self.view.bounds.size.width-10)/2, 300);
 
    
    UICollectionView* collectionView = [[UICollectionView alloc]initWithFrame:self.view.bounds collectionViewLayout:flowLayout];
    
    collectionView.delegate = self;
    collectionView.dataSource = self;
    
    collectionView.backgroundColor = [UIColor clearColor];
    
    [collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"UICollectionViewCell"];
    [self.view addSubview:collectionView];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 50;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell* cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"UICollectionViewCell" forIndexPath:indexPath];
    cell.backgroundColor = [UIColor lightGrayColor];
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.row%3==0) {
        return  CGSizeMake(self.view.bounds.size.width-10, 200);
    }
    else {
        return  CGSizeMake((self.view.bounds.size.width-10)/2, 300);
    }
}
@end
