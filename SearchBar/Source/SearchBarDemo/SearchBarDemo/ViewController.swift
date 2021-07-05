import UIKit

class SearchBarViewController: UIViewController, SearchBarDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureNavigationBar()
    }
    
    func configureNavigationBar() {
        let searchBar = SearchBar()

        let searchBarImage = #imageLiteral(resourceName: "icon_search")
        searchBar.searchBarImage = searchBarImage

        searchBar.delegate = self
        searchBar.textField.backgroundColor = .lightGray
        searchBar.backgroundColor = .white
        searchBar.placeholder = "Введите запрос"
        searchBar.textField.spellCheckingType = .no
        searchBar.textField.autocorrectionType = .no

        let bnRightItem = UIBarButtonItem(title: "Поиск",
                                          style: .plain,
                                          target: self,
                                          action: #selector(rightBarButtonItemTap))

        navigationItem.rightBarButtonItem = bnRightItem
        navigationItem.titleView = searchBar

        searchBar.textField.becomeFirstResponder()
    }
    
    func searchBar(_ searchBar: SearchBar, textChanged text: String) {
        guard text.isEmpty else { return }
        DispatchQueue.main.async { [weak self] in
            guard let __self = self else { return }
            // update list
        }
    }
    
    func searchBarSearchButtonTap(_ searchBar: SearchBar) {
        // Search
    }
    
    func searchBarDidStartEditing(_ searchBar: SearchBar) {
        
    }
    
    func searchBarDidFinishEditing(_ searchBar: SearchBar) {
        // Editing End Animation
    }
    
    func keyboarWillChangeFrame(_ frame: CGRect) {
        // channge bottomOffset
    }
    
    @objc
    func rightBarButtonItemTap() {
        //did finish
    }
}


