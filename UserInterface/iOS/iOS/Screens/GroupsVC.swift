import UIKit

class GroupsVC: UITableViewController {
    var groupList = ["GeekBrains", "PiterOnline", "Picabu", "NewGroup"]

    override func viewDidLoad() {
        super.viewDidLoad()


    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groupList.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GroupTemplate", for: indexPath) as! GroupCell
        cell.groupName.text = groupList[indexPath.row]
        return cell
    }


}
