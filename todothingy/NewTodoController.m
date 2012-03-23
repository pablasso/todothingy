#import "NewTodoController.h"

@implementation NewTodoController

@synthesize delegate;
@synthesize textField;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel 
                                                                                          target:self 
                                                                                          action:@selector(cancel:)];
    
    [self.textField becomeFirstResponder];
}

- (void)cancel:(UIBarButtonItem *)button {
    [self dismissModalViewControllerAnimated:YES];
}

- (IBAction)submitted:(UIButton *)button {
    if ([self.textField.text length] > 0) {
        [self.delegate todoSubmitted:self.textField.text];
        [self cancel:nil];
    }
}

#pragma mark - UITextFieldDelegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [self submitted:nil];
    return YES;
}

@end