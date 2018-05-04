import UIKit

class FruitsTableViewController: UITableViewController {
    
    var fruits = ["Apple", "Apricot", "Banana", "Blueberry", "Cantaloupe", "Cherry", "Clementine", "Coconut", "Cranberry", "Fig", "Grape", "Grapefruit", "Kiwi fruit", "Lemon", "Lime", "Lychee", "Mandarine", "Mango", "Melon", "Nectarine", "Olive", "Orange", "Papaya", "Peach", "Pear", "Pineapple", "Raspberry", "Strawberry"]
    
    let section = ["pizza", "deep dish pizza", "calzone"]
    
    let items = [["Margarita", "BBQ Chicken", "Pepperoni"], ["sausage", "meat lovers", "veggie lovers"], ["sausage", "chicken pesto", "prawns", "mushrooms"]]
    
    
    
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return self.section.count
        //return 1
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items[section].count
        
    }
//    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return self.section[section]
//        //return "Welcome to Fruits World"
//    }
    
    
    enum TableSection: Int {
        case action = 0, comedy, drama, indie, total
    }
     let SectionHeaderHeight: CGFloat = 30
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: tableView.bounds.width, height: SectionHeaderHeight))
        view.backgroundColor = UIColor(red: 253.0/255.0, green: 240.0/255.0, blue: 196.0/255.0, alpha: 1)
        let label = UILabel(frame: CGRect(x: 30, y: 0, width: tableView.bounds.width - 30, height: SectionHeaderHeight))
        label.font = UIFont.boldSystemFont(ofSize: 30)
        label.textColor = UIColor.blue

        label.text = self.section[section]
        view.addSubview(label)
        return view
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Fruits_Identifier", for: indexPath)
        
        let fruitName = fruits[indexPath.row]
        cell.textLabel?.text = self.items[indexPath.section][indexPath.row]
        //cell.textLabel?.text = fruitName
        cell.detailTextLabel?.text = "Delicious! iuhkuhdfgkdhs fgklkldfigfkdlsgfkdlkfdghkfdhgkl kh uuuuhibi uiui"
        
        cell.imageView?.image = UIImage(named: fruitName)
        
        return cell
    }

    
    
}
