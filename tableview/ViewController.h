//
//  ViewController.h
//  tableview
//
//  Created by josue mora on 22/05/14.
//  Copyright (c) 2014 josue mora. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
@property (strong, nonatomic) IBOutlet UITableView *tablita;
@property (strong ,nonatomic) NSArray * aMenu;
- (IBAction)botonCerrar:(id)sender;

@end
