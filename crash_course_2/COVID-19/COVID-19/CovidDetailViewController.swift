//
//  CovidDetailViewController.swift
//  COVID-19
//
//  Created by 최종선 on 2021/12/15.
//

import UIKit

class CovidDetailViewController: UITableViewController {

  @IBOutlet weak var newCaseCell: UITableViewCell!
  @IBOutlet weak var totalCaseCell: UITableViewCell!
  @IBOutlet weak var recoveredCell: UITableViewCell!
  @IBOutlet weak var deathCell: UITableViewCell!
  @IBOutlet weak var percentageCell: UITableViewCell!
  @IBOutlet weak var overseasInflowCell: UITableViewCell!
  @IBOutlet weak var regionalOutbreakCell: UITableViewCell!
  
  var covidOverview: CovidOverview?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.configueView()
  }
  
  func configueView() {
    guard let covidOverview = self.covidOverview else { return }
    self.title = covidOverview.countryName
    self.newCaseCell.detailTextLabel?.text = "\(covidOverview.newCase) 명"
    self.totalCaseCell.detailTextLabel?.text = "\(covidOverview.totalCase) 명"
    self.recoveredCell.detailTextLabel?.text = "\(covidOverview.recovered) 명"
    self.deathCell.detailTextLabel?.text = "\(covidOverview.death) 명"
    self.percentageCell.detailTextLabel?.text = "\(covidOverview.percentage) 명"
    self.overseasInflowCell.detailTextLabel?.text = "\(covidOverview.newFcase) 명"
    self.regionalOutbreakCell.detailTextLabel?.text = "\(covidOverview.newCcase) 명"
  }
}
