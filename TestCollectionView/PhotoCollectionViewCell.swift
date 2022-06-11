//
//  PhotoCollectionViewCell.swift
//  TestCollectionView
//
//  Created by Dmitry Dorodniy on 08.06.2022.
//

import UIKit

class PhotoCollectionViewCell: UICollectionViewCell {

    static let identifier = "PhotoCollectionViewCell"

    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 3

        return imageView
    }()


    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(imageView)

        let images = ["dog - 1",
                      "dog - 2",
                      "dog - 3",
                      "dog - 4",
                      "dog - 5",
                      "dog - 6",
                      "dog - 7",
                      "dog - 8",
                      "dog - 9",
                      "dog - 10",
                      "dog - 11",
                      "dog - 12"].compactMap({ $0 })

        imageView.image = UIImage(named: images.randomElement() ?? "")

    }

    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.frame = contentView.bounds
    }

    override func prepareForReuse() {
        super.prepareForReuse()
//        imageView.image = nil
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
