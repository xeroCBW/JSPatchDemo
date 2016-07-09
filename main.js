require('UITableViewCell,NSString');
defineClass('ViewController', {
    viewDidLoad: function() {
        self.super().viewDidLoad();
        // Do any additional setup after loading the view, typically from a nib.
    },
    numberOfSectionsInTableView: function(tableView) {

        return 2;
    },
    tableView_numberOfRowsInSection: function(tableView, section) {


        return 1;
    },
    tableView_cellForRowAtIndexPath: function(tableView, indexPath) {

        var cell = UITableViewCell.alloc().init();
        cell.textLabel().setText(NSString.stringWithFormat("%ld----%ld", indexPath.section() + 1, indexPath.row() + 1));

        switch (indexPath.section()) {
            case 0:
                {
                    cell.textLabel().setText("第一个");
                }
                break;
            case 1:
                {
                    cell.textLabel().setText("第二个");
                }
                break;
            case 2:
                {
                    cell.textLabel().setText("第三个(会有问题)");
                }
                break;

            default:
                break;
        }
        return cell;

    },
});