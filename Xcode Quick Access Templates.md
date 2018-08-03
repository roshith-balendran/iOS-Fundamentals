# Index

A B [**C**](#c) D E F G H I J K L M N O P Q R S [**T**](#t) U V W X Y Z

A
B

### C  
* [CollectionView Delegate and Datasource methods](#collectionview-delegate-and-datasource-methods)

D
E
F
G
H
I
J
K
L
M
N
* [Navigation Controller](*navigation-controller)

O
P
Q
R
S

### T  
* [TableView Delegate and Datasource methods](#tableview-delegate-and-datasource-methods)


U
V
W
X
Y
Z

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

### Navigation Controller

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
