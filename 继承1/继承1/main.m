//
//  main.m
//  继承1
//
//  Created by Eleven on 2023/5/7.
//

#import <Foundation/Foundation.h>
#import "FKSubclass.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        FKBase *bc = [[FKBase alloc] init];
        [bc base];
        [bc test];
        FKSubclass *sc = [[FKSubclass alloc] init];
        [sc base];
        [sc test];
        [sc sub];
        FKBase *ploymophicBc = [[FKSubclass alloc] init];
        [ploymophicBc base];
        [ploymophicBc test];
        id dyna = ploymophicBc;
        [dyna sub];
    }
    return 0;
}
