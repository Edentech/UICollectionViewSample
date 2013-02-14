//
//  ETViewController.m
//  ETCollectionViewSample
//
//  Created by Matthew Mondok on 2/14/13.
//  Copyright (c) 2013 Matthew Mondok. All rights reserved.
//

#import "ETViewController.h"
#import "ETAwesomeCollectionViewCell.h"

@interface ETViewController ()

@end

@implementation ETViewController

- (void)viewDidLoad
{
  collectionItems = [@"It rubs the lotion on its skin. It does this whenever it is told. It rubs the lotion on its skin or else it gets the hose again." componentsSeparatedByString:@" "];
  [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

- (NSInteger)collectionView:(UICollectionView *)view numberOfItemsInSection:(NSInteger)section {
  return collectionItems.count;
}
// 2
- (NSInteger)numberOfSectionsInCollectionView: (UICollectionView *)collectionView {
  return 1;
}
// 3
- (UICollectionViewCell *)collectionView:(UICollectionView *)cv cellForItemAtIndexPath:(NSIndexPath *)indexPath {
  ETAwesomeCollectionViewCell *cell = [cv dequeueReusableCellWithReuseIdentifier:@"MyCell" forIndexPath:indexPath];
  cell.backgroundColor = [UIColor orangeColor];
  cell.nameForCell.text = [collectionItems objectAtIndex:indexPath.row];
  return cell;
}


@end
