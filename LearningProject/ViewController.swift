//
//  ViewController.swift
//  LearningProject
//
//  Created by MACBOOK on 01/11/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configUI()
    }
    
    //MARK: - configUI
    private func configUI() {
        tableView.register(UINib(nibName: TABLE_VIEW_CELL.HeaderCell.rawValue, bundle: nil), forCellReuseIdentifier: TABLE_VIEW_CELL.HeaderCell.rawValue)
        tableView.register(UINib(nibName: TABLE_VIEW_CELL.TableViewCell.rawValue, bundle: nil), forCellReuseIdentifier: TABLE_VIEW_CELL.TableViewCell.rawValue)
    }
}

//MARK: - TableView DataSource and Delegate Methods
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    // numberOfSections
    func numberOfSections(in tableView: UITableView) -> Int {
        return HEADER_INFO.allCases.count
    }
    
    // heightForHeaderInSection
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 100
    }
    
    // viewForHeaderInSection
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        guard let headerView = Bundle.main.loadNibNamed(TABLE_VIEW_CELL.HeaderCell.rawValue, owner: self, options: nil)?.first as? HeaderCell else {
            return UIView()
        }
        headerView.headerLbl.text = HEADER_INFO.allCases[section].rawValue
        headerView.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        return headerView
    }
    
    // numberOfRowsInSection
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return ALAPHABET_CONTENT.allCases.count
        } else {
            return NUMBER_CONTENT.allCases.count
        }
    }
    
    // heightForRowAt
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    // cellForRowAt
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TABLE_VIEW_CELL.TableViewCell.rawValue, for: indexPath) as? TableViewCell else { return UITableViewCell() }
        if indexPath.section == 0 {
            cell.contentLbl.text = ALAPHABET_CONTENT.allCases[indexPath.row].rawValue
        } else {
            cell.contentLbl.text = NUMBER_CONTENT.allCases[indexPath.row].rawValue
        }
        return cell
    }
}
