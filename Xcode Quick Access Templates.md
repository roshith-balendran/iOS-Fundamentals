# Index

## A | B | [**C**](#c) | D | E | F | G | H | I | J | K | L | M | [**N**](#n) | O | P | Q | R | S | [**T**](#t) | U | V | W | X | Y | Z

### C  
* [Collection View](#collection-view)

### N
* [Navigation Controller](#navigation-controller)

### T  
* [TableView](#table-view)

---
## Collection View
### CollectionView Delegate and Datasource methods

```swift
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 7
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let ccell: UICollectionViewCell? = collectionView.dequeueReusableCell(withReuseIdentifier: "cellIdentifier", for: indexPath)
        return ccell!
    }
```
---
## Navigation Controller
### Hide Navigation Bar
```swift
        self.navigationController?.navigationBar.isHidden = true
```

### Push to a ViewController
```swift
        let storyBoard = UIStoryboard(name: "KZSell", bundle: nil)
        let destinationViewController: KZSellDetailsViewController = storyBoard.instantiateViewController(withIdentifier: "addressDetailsVC") as! KZSellDetailsViewController
        navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        navigationController?.pushViewController(destinationViewController, animated: true)
```

### Pop to previous View Controller
```swift
        navigationController?.popViewController(animated: true)
```
---
## Table View
### TableView Delegate and Datasource methods

```swift
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:CustomTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cellIdentifier", for: indexPath) as! CustomTableViewCell
        
        return cell
        
    }
```

### Add button action to UIButtons in Prototype Cells

Your ExampleCell
```swift
protocol ExampleCellDelegate: class {
    func didTapButton(cell: ExampleCell)
}

class ExampleCell: UITableViewCell {

    weak var cellDelegate: ExampleCellDelegate?

    @IBAction func btnTapped(_ sender: UIButton) {
        cellDelegate?.didTapButton(cell: self)
    }
}
```
Your ViewController
```swift
class ViewController: ExampleCellDelegate {
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "ExampleCell", for: indexPath) as? ExampleCell {

            cell.cellDelegate = self
            return cell
        }
        return UITableViewCell()
    }

    func didTapButton(cell: ExampleCell) {
        if let indexPath = tableView.indexPath(for: cell) {
            // do Something
        }
    }
}
```
