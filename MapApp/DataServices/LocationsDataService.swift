//
//  LocationsDataService.swift
//  MapApp
//
//  Created by Ian   on 17/05/2025.
//

import Foundation
import MapKit

class LocationsDataService {
    
    static let locations: [Location] = [
     
        Location(
            name: "Nairobi National Park",
            cityName: "Nairobi",
            coordinates: CLLocationCoordinate2D(latitude: -1.3652, longitude: 36.8844),
            description: "Nairobi National Park is a unique wildlife conservation area located just 7 kilometers from the center of Nairobi. Established in 1946, it's the oldest national park in Kenya and offers visitors the remarkable experience of seeing lions, giraffes, zebras, and other wildlife with the city's skyline in the background.",
            imageNames: [
                "nairobi-national-park-1",
                "nairobi-national-park-2",
                "nairobi-national-park-3",
            ],
            link: "https://en.wikipedia.org/wiki/Nairobi_National_Park"),
        Location(
            name: "Giraffe Centre",
            cityName: "Nairobi",
            coordinates: CLLocationCoordinate2D(latitude: -1.3753, longitude: 36.7465),
            description: "The Giraffe Centre is a nature sanctuary established to protect the endangered Rothschild's giraffe. Visitors can hand-feed giraffes from an elevated platform, making it a unique interactive wildlife experience in the heart of Nairobi.",
            imageNames: [
                "nairobi-giraffe-1",
                "nairobi-giraffe-2",
                "nairobi-giraffe-3",
            ],
            link: "https://en.wikipedia.org/wiki/Giraffe_Centre"),
        Location(
            name: "Karen Blixen Museum",
            cityName: "Nairobi",
            coordinates: CLLocationCoordinate2D(latitude: -1.3534, longitude: 36.7144),
            description: "The Karen Blixen Museum was once the home of Danish author Karen Blixen, famous for her book 'Out of Africa.' The colonial farmhouse has been preserved as a museum and offers insights into Kenya's colonial period and Blixen's life.",
            imageNames: [
                "nairobi-blixen-1",
                "nairobi-blixen-2",
                "nairobi-blixen-3",
            ],
            link: "https://en.wikipedia.org/wiki/Karen_Blixen_Museum"),
        Location(
            name: "Nairobi National Museum",
            cityName: "Nairobi",
            coordinates: CLLocationCoordinate2D(latitude: -1.2741, longitude: 36.8172),
            description: "The Nairobi National Museum showcases Kenya's rich heritage with collections that include prehistoric artifacts, tribal crafts, and natural history exhibits. It's a comprehensive introduction to Kenya's cultural and natural diversity.",
            imageNames: [
                "nairobi-museum-1",
                "nairobi-museum-2",
                "nairobi-museum-3",
            ],
            link: "https://en.wikipedia.org/wiki/Nairobi_National_Museum"),
        Location(
            name: "Karura Forest",
            cityName: "Nairobi",
            coordinates: CLLocationCoordinate2D(latitude: -1.2405, longitude: 36.8291),
            description: "Karura Forest is an urban forest reserve covering 1,000 hectares in Nairobi. It features hiking trails, waterfalls, caves, and abundant wildlife, providing a peaceful natural retreat within the bustling city.",
            imageNames: [
                "nairobi-karura-1",
                "nairobi-karura-2",
                "nairobi-karura-3",
            ],
            link: "https://en.wikipedia.org/wiki/Karura_Forest"),
        Location(
            name: "Bomas of Kenya",
            cityName: "Nairobi",
            coordinates: CLLocationCoordinate2D(latitude: -1.3236, longitude: 36.7772),
            description: "Bomas of Kenya is a cultural center that preserves and promotes the rich diversity of Kenya's tribal cultures. It features traditional homesteads (bomas) from various ethnic groups and hosts daily performances of traditional dances and music.",
            imageNames: [
                "nairobi-bomas-1",
                "nairobi-bomas-2",
                "nairobi-bomas-3",
            ],
            link: "https://en.wikipedia.org/wiki/Bomas_of_Kenya"),
        Location(
            name: "Nairobi Railway Museum",
            cityName: "Nairobi",
            coordinates: CLLocationCoordinate2D(latitude: -1.2908, longitude: 36.8248),
            description: "The Nairobi Railway Museum documents the history of Kenya's railway system, which played a crucial role in the country's development. The museum displays vintage locomotives, artifacts, and photographs that tell the story of the famous 'Lunatic Express' railway line.",
            imageNames: [
                "nairobi-railway-1",
                "nairobi-railway-2",
                "nairobi-railway-3",
            ],
            link: "https://en.wikipedia.org/wiki/Nairobi_Railway_Museum")
    ]
    
}
