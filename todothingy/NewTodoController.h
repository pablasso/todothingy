@protocol NewTodoControllerDelegate <NSObject>

@required
- (void)todoSubmitted:(NSString *)newTodo;

@end

@interface NewTodoController : UIViewController <UITextFieldDelegate> {
    __weak id delegate;
    UITextField *textField;
}

@property (nonatomic, weak) id <NewTodoControllerDelegate> delegate;  
@property (nonatomic, strong) IBOutlet UITextField *textField;

- (void)cancel:(UIBarButtonItem *)button;
- (IBAction)submitted:(UIButton *)button;

@end
