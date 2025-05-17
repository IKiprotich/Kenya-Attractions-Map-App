# Kenya Attractions Map App

## Project Overview
This iOS application showcases tourist attractions in Kenya, with a special focus on Nairobi. The app was developed primarily to demonstrate the implementation of the **MVVM (Model-View-ViewModel)** architectural pattern in SwiftUI, providing a clean separation of concerns and a maintainable codebase structure.

## Key Features
- Interactive map display of tourist attractions across Kenya
- Detailed location information including descriptions and photos
- Wikipedia links for further reading about each attraction
- Location filtering capabilities
- Custom map annotations and region management
- Smooth transitions and animations between views

## Screenshots
![Simulator Screenshot - iPhone11 - 2025-05-17 at 16 46 34](https://github.com/user-attachments/assets/d93ce9cc-07f0-4684-8ca9-beb7d8775aa7)
![Simulator Screenshot - iPhone11 - 2025-05-17 at 16 40 59](https://github.com/user-attachments/assets/3fe97331-713c-46da-9da0-a51b79561570)
![Simulator Screenshot - iPhone11 - 2025-05-17 at 16 40 49](https://github.com/user-attachments/assets/69f1dec5-dd81-4b42-8f1a-735b22c08f50)
![Simulator Screenshot - iPhone11 - 2025-05-17 at 16 41 32](https://github.com/user-attachments/assets/f0743f59-0bb4-495a-9012-177d706f3882)
![Simulator Screenshot - iPhone11 - 2025-05-17 at 16 41 15](https://github.com/user-attachments/assets/e45640cb-ebde-4938-9589-3a28f6f12b8b)



## Architecture: MVVM Implementation

### Model
- `Location`: Data model representing attraction information
- `LocationsDataService`: Service class providing location data

### View
- `LocationsView`: Main map view displaying all attractions
- `LocationDetailView`: Detailed view for a specific attraction
- `LocationPreviewView`: Preview card for attractions
- `LocationListView`: List of all available attractions

### ViewModel
- `LocationsViewModel`: Manages the state and logic for the map and location data
  - Handles map region changes
  - Manages selected locations
  - Controls UI state for the app
  - Processes user interactions

## Concepts Used

### SwiftUI
- Custom UI components
- Animation and transitions
- List and scroll views
- Map integration

### MVVM Concepts
- Data binding between View and ViewModel
- State management
- Separation of UI logic from business logic
- Reactive programming patterns

### Map Features
- Custom map annotations
- Region management and zooming
- Location coordinates handling
- Map interaction



## Data Sources
The application includes information about various attractions in Kenya, including:

1. **Nairobi National Park** - The world's only national park within a capital city
2. **Giraffe Centre** - Conservation center for endangered Rothschild's giraffe
3. **Karen Blixen Museum** - Former home of the "Out of Africa" author
4. **Nairobi National Museum** - Kenya's largest museum

Each location is presented with:
- High-quality photographs
- Detailed descriptions
- Precise geographic coordinates
- Links to Wikipedia for in-depth information

## Future Enhancements
- Integration with Google Places API for expanded location data
- User favorites and custom collections
- Offline mode functionality
- Route planning between attractions
- User reviews and ratings


