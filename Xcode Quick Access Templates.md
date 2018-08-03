

### TableView Delegate and Datasource methods.

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
        
        let cell:KZTitleTableViewCell = tableView.dequeueReusableCell(withIdentifier: "KZTitle", for: indexPath) as! KZTitleTableViewCell
        
        return cell
        
    }
```
