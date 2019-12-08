

import UIKit

class FriendsVC: UITableViewController {
    var friendList = [Friend(userName: "Pavel", avatarPath: "user", isOnline: false),
                      Friend(userName: "Ivan", avatarPath: "user", isOnline: false),
                      Friend(userName: "Andrey", avatarPath: "user", isOnline: false),
                      Friend(userName: "Maria", avatarPath: "user", isOnline: false),
                      Friend(userName: "Svetlana", avatarPath: "user", isOnline: false),
                      Friend(userName: "Pavel", avatarPath: "user", isOnline: false)]

    override func viewDidLoad() {
        super.viewDidLoad()

    }


    override func numberOfSections(in tableView: UITableView) -> Int { //сколько групп в списке
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {   //возвращает количество секций
        return friendList.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {     //возвращает шаблон данной ячейки
        let cell = tableView.dequeueReusableCell(withIdentifier: "FriendTemplate", for: indexPath) as! FriendCell
        cell.userName.text = friendList[indexPath.row].userName
        return cell
        }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       let obj = friendList[indexPath.row]
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(identifier: "PhotoController")
        self.navigationController?.pushViewController(viewController, animated: true)
    }

}
 
