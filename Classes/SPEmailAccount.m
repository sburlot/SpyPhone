//
//  SPEmailAccount.m
//  SpyPhone
//
//  Created by Nicolas Seriot on 11/20/09.
//  Copyright 2009. 
//  Licensed under GPL 2.0 http://www.gnu.org/licenses/gpl-2.0.txt
//

#import "SPEmailAccount.h"


@implementation SPEmailAccount

@synthesize fullname;
@synthesize email;
@synthesize type;
@synthesize hostname;
@synthesize username;
@synthesize displayName;

- (void)dealloc {
	[fullname release];
	[email release];
	[type release];
	[hostname release];
	[username release];
	[displayName release];
	[super dealloc];
}

+ (SPEmailAccount *)accountWithDictionary:(NSDictionary *)d {
	return nil; // for subclasses
}

- (NSArray *)infoArray {
	NSMutableArray *a = [NSMutableArray array];
	
	if(fullname) [a addObject:[NSString stringWithFormat:@"Name: %@", fullname]];
	if(type) [a addObject:[NSString stringWithFormat:@"Type: %@", type]];
	if(hostname) [a addObject:[NSString stringWithFormat:@"Host: %@", hostname]];
	if(username) [a addObject:[NSString stringWithFormat:@"User: %@", username]];
	if(email) {
		for (id emailAddress in email)
			[a addObject:[NSString stringWithFormat:@"Email: %@", emailAddress]];
	}

	return a;
}

@end
