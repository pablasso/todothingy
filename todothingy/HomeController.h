#import "NewTodoController.h"

@interface HomeController : UITableViewController <NewTodoControllerDelegate> {
    NSMutableArray *todos;
}

@property (nonatomic, strong) NSMutableArray *todos;

- (void)editTable:(UIBarButtonItem *)button;
- (void)openNewTodo:(UIBarButtonItem *)button;

@end