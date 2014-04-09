//
//  main.m
//  Prueba
//
//  Created by user11394 on 4/8/14.
//  Copyright (c) 2014 Alex. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "AppDelegate.h"
#import "PixelInvertido.h"

int main(int argc, char * argv[])
{
    printf("Hola Mundo");
    
    NSString *cadena1 = @"hola";
    NSString *cadena2 = @"h";
    cadena2 = [cadena2 stringByAppendingString:@"ola"];
    NSLog(@"%@", cadena1);
    NSLog(@"%@", cadena2);
    if(cadena1==cadena2){
        NSLog(@"son iguales");
    }
    else{
        NSLog(@"son distintas");
        if([cadena1 isEqualToString:cadena2]){
            NSLog(@"comparacion correcta. Son iguales");
        }
        else{
            NSLog(@"comparacion correcta. Son diferentes");
        }
    }
    
    Pixel *pixel = [[Pixel alloc] init];
    [pixel situarEnOrigen];
    
    NSLog(@"X: %d, Y: %d",[pixel posX],[pixel posY]);
    [pixel moverHorizontalmente:30];
    NSLog(@"X: %d, Y: %d",[pixel posX],[pixel posY]);
    [pixel moverHorizontalmente:10 yVerticalmente:200];
    NSLog(@"X: %d, Y: %d",[pixel posX],[pixel posY]);
    [pixel moverHorizontalmente:10 yVerticalmente:200];
    NSLog(@"X: %d, Y: %d",[pixel posX],[pixel posY]);
    
    if ([pixel estaFueraDeLosLimites]){
        NSLog(@"Está fuera de los limites ese pixel");
    }
    else{
        NSLog(@"El pixel esta dentro de los límites");
    }
    //[pixel release];
    
    pixel = [[PixelInvertido alloc] init];
    
    [pixel situarEnOrigenInvertido];
    
    NSLog(@"X: %d, Y: %d",[pixel posX],[pixel posY]);
    
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
