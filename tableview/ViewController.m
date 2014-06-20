//
//  ViewController.m
//  tableview
//
//  Created by josue mora on 22/05/14.
//  Copyright (c) 2014 josue mora. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@end

@implementation ViewController
@synthesize tablita;
@synthesize aMenu;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    aMenu = [[NSArray alloc] initWithObjects:@"opcion1",@"opcio2",@"opcion3", nil];
    aMenu = @[@"OpcionX1",@"OpcionX2",@"OpcionX3"];
    aMenu = [NSArray arrayWithObjects:@"opcionZ1",@"opcionZ2",@"opcionz3", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    //return 4;
    return [aMenu count];
}

- (UITableViewCell * )tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString * MyCellId = @"MyCellId";
    
    UITableViewCell * cell = [self.tablita dequeueReusableCellWithIdentifier:MyCellId];
    
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:MyCellId];
    }

    
    /* Ejemplo de Sintaxis Object-C */
    [[cell textLabel] setText:@"Hola"];
    [cell.textLabel setText:@"Hola"];
    [cell textLabel].text = @"Hola";
    cell.textLabel.text = @"Hola";
 
    switch ([indexPath row]) {
        case 1:
            [cell.textLabel setText:@"Hola"];
            break;
        case 2:
            [cell.textLabel setText:@"Mundo"];
            break;
        case 3:
            [cell.textLabel setText:@"Omnilife"];
            break;
            
        default:
            [cell.textLabel setText:@"--------"];
            break;
    }
    
    [cell.textLabel setText:[aMenu objectAtIndex:[indexPath row]]];
    NSLog(@"index: %ld texto: %@",(long)[indexPath row],[aMenu objectAtIndex:[indexPath row]]);
    
    return cell;
}


- (IBAction)botonCerrar:(id)sender {
    exit(0);
}
@end
