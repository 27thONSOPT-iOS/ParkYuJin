//
//  ViewController.swift
//  3rd_Assignment
//
//  Created by ✨EUGENE✨ on 2020/11/05.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var rootView: UIView!
    @IBOutlet var netwokingCollectionView: UICollectionView!
    @IBOutlet var topView: UIView!
    @IBOutlet var topViewHeightConstraint: NSLayoutConstraint!
    
    
    var peopleList: [People] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setMusicData()
        netwokingCollectionView.dataSource = self
        netwokingCollectionView.delegate = self
        // Do any additional setup after loading the view.
    }
    
    func setMusicData() {
        peopleList.append(contentsOf: [
            People(name: "이주혁", tag: "#hereis#아요#내꿈은 #사과농장#ENFP", personImageName: "juhyeok"),
            People(name: "김나연", tag: "#이제막학기 #여러분들이랑_친해지고_싶어요 #번개스터디환영", personImageName: "nayeon"),
            People(name: "손평화", tag: "#핸드피쓰 #이너피쓰 #배꼽도둑 #헬린이 #sson_peace7", personImageName: "peace"),
            People(name: "유희수", tag: "#총무꿈나무 #유총무 #현재_소식중 #풉", personImageName: "heesoo"),
            People(name: "박세은", tag: "#마 #아요는 #처음입니다", personImageName: "saeeun"),
            People(name: "한울", tag: "#ENFP #STORM #울크박스 #@hwooolll #하늘콜렉터", personImageName: "wool"),
            People(name: "김한솔", tag: "#고객중심#고객행동데이터기반한#UX디자이너#워너비,,", personImageName: "hansol"),
            People(name: "배민주", tag: "#디팟장 #개자이너 #최종목표는행복", personImageName: "minju"),
            People(name: "최영훈", tag: "#서팟짱 #솝트3회차 #앱잼_요리_개발자 #UX/UI", personImageName: "younghun"),
            People(name: "강민구", tag: "#밍맹 #안팟장 #이래뵈도_귀여운거좋아함 #지박령 #허당", personImageName: "minguru"),
            People(name: "이정연", tag: "#플레이스픽 #ENFJ #기획_디자인_개발_다", personImageName: "yeonjeong"),
            People(name: "홍준엽", tag: "#26기서버 #27기웹 #샵이_두개면_어떻게될까? ##", personImageName: "junyeop")
        ])
    }

}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return peopleList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PeopleCell.identifier, for: indexPath) as? PeopleCell else {
            return UICollectionViewCell()
        }
        cell.setCell(people: peopleList[indexPath.item])
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderCollectionCell.identifier, for: indexPath) as! HeaderCollectionCell
        
        return headerView
    }
    
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 150,
                      height: 225)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0 }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0 }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 41, left: 24, bottom: 0, right: 24) }
}

extension ViewController: UIScrollViewDelegate {
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        UIView.animate(withDuration: 0.5, animations: {
            self.topViewHeightConstraint.constant = 88
            self.rootView.layoutIfNeeded()
        })
    }
    
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        if (decelerate) {
            UIView.animate(withDuration: 0.5, animations: {
                self.topViewHeightConstraint.constant = 0
                self.rootView.layoutIfNeeded()
            })
        }
    }
}
