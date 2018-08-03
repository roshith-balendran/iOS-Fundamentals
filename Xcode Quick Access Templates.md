# Index

* [CollectionView Delegate and Datasource methods](#collectionview-delegate-and-datasource-methods)
* [TableView Delegate and Datasource methods](#tableview-delegate-and-datasource-methods)


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
