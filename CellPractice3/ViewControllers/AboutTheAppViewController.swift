//
//  AboutTheAppViewController.swift
//  CellPractice3
//
//  Created by admin5 on 09/03/25.
//


import UIKit

class AboutTheAppViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    private func setupUI() {
        view.backgroundColor = .systemBackground
        title = "About the App"

        // Create ScrollView
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(scrollView)

        // Create Content View
        let contentView = UIView()
        contentView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(contentView)

        // Create Label for About Content
        let aboutLabel = UILabel()
        aboutLabel.translatesAutoresizingMaskIntoConstraints = false
        aboutLabel.text = """
        Welcome to TRY IT!
        
        What is TRY IT?
        - TRY IT is an AI-powered app offering Virtual Try-On & Body Measurements.
        - Visualize clothes on yourself before making a purchase.
        - Get accurate size recommendations.
        
        Key Features:
        - Virtual Try-On: AI-driven clothing visualization.
        - AI Body Measurements: Get precise body size estimates.
        - Smart Shopping: Avoid returns & size mismatches.
        
        Why Use TRY IT?
        - Save time by ensuring the right fit before buying.
        - Make informed shopping decisions.
        
        Privacy & Security:
        - We ensure your data is safe and never shared.
        
        Need Help?
        - Contact us at support@tryitapp.com.
        
        Thank you for using TRY IT!
        """
        aboutLabel.numberOfLines = 0
        aboutLabel.textAlignment = .left
        aboutLabel.font = UIFont.systemFont(ofSize: 16)

        // Add to Content View
        contentView.addSubview(aboutLabel)

        // Apply Constraints
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            
            aboutLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
            aboutLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            aboutLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            aboutLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20)
        ])
    }
}



