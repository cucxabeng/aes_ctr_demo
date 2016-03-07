//
//  ViewController.m
//  VNPayShopClient
//
//  Created by Hai Dang on 3/7/16.
//  Copyright © 2016 VNPAY. All rights reserved.
//

#import "ViewController.h"
#import "AESCrypt.h"
#import <CommonCrypto/CommonDigest.h>
#import <CommonCrypto/CommonCryptor.h>
#import <CommonCrypto/CommonHMAC.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *key = @"ynhj267hmzute78j";
    NSString *data = @"mobile=84977482222&bankcode=ACB";
    
    NSString *encrypt = [AESCrypt encryptVNPAY:data password:key];
    
    NSLog(@"%@", encrypt);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
