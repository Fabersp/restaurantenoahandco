## 🍽️ **Noh & Co. Restaurant App**
**Version:** 1.0  
**Created:** 2015  
**Location:** Dublin, Ireland  
**Language:** Objective-C  

---

## 🚀 **About the Project**
Noh & Co. Restaurant App was developed in **2015** to enhance the dining experience at the Noh & Co. Restaurant, located in **Dublin, Ireland**. This application allows users to explore the restaurant's offerings, view menus, get updates, and engage with the restaurant through interactive features.

The app integrates smooth navigation with a sidebar menu, interactive pages, and real-time updates fetched from an online server.

---

## 🛠️ **Features**

- **Sidebar Navigation:** Easily switch between sections like News, Calendar, Wishlist, and Bookmarks.  
- **Interactive Home Screen:** Scrollable image slider showcasing restaurant highlights.  
- **News Section:** Fetch and display updates and news from a remote API.  
- **Internet Connectivity Check:** Verify network status using Reachability.  
- **Custom Table Views:** Dynamic content with rich visuals for news and updates.  
- **Loading Indicators:** MBProgressHUD for a seamless loading experience.  
- **Networking:** API integration for dynamic content updates.

---

## 📂 **Project Structure**

```
NohCo-Restaurant
├── ImagesNew         # New image assets
├── Menu             # Menu-related views and controllers
├── Home             # Home screen views and controllers
├── About            # About page views and controllers
├── MapView          # Map and location-based functionality
├── Icons            # App icons and assets
├── Progress         # Progress HUD and loaders
├── Parceiros        # Partner-related content
├── Contato          # Contact-related views and controllers
├── Geral            # General utilities and helpers
├── MoreViews        # Additional content views
├── News            # News-related views and controllers
├── Component
│   ├── SWRevealViewController.h/.m  # Sidebar menu logic
│   ├── SidebarViewController.h/.m   # Sidebar UI logic
│   ├── AppDelegate.h/.m             # App lifecycle management
│   ├── MainStoryboard.storyboard    # Storyboard configuration
│   ├── MainViewController.h/.m      # Main screen logic
│   ├── MapViewController.h/.m       # Map screen logic
├── Libraries
│   ├── Reachability.h/.m            # Internet connectivity checks
│   ├── MBProgressHUD.h/.m           # Loading indicators
└── Assets                           # Image and resource assets
```

---

## 🔗 **API Integration**

The app fetches dynamic content from a remote API:

```
http://www.promastersolution.com.br/x7890_IOS/central/visitas.php
```

### **Endpoints:**  
- `/visitas.php` - Fetch latest news and updates.

---

## 📱 **Technologies Used**

- **Language:** Objective-C  
- **Storyboard:** Interface design and navigation flow  
- **Networking:** `NSURLSession`  
- **Reachability:** Network connectivity checks  
- **Loading Indicators:** `MBProgressHUD`  
- **Version Control:** Git  

---

## 🛠️ **Setup Instructions**

1. **Clone the Repository:**  
   ```bash
   git clone https://github.com/fabersp/NohCo-Restaurant.git
   cd NohCo-Restaurant
   ```

2. **Install Dependencies:**  
   Ensure required libraries (`MBProgressHUD`, `Reachability`) are available. If CocoaPods is used:  
   ```bash
   pod install
   ```

3. **Open in Xcode:**  
   ```plaintext
   open NohCo-Restaurant.xcworkspace
   ```

4. **Run the Project:**  
   - Select a simulator or a real device.  
   - Press **Cmd + R** to build and run.

---

## 🔍 **Key Classes and Files**

- **Home.m:** Main UI for home screen with image slider.  
- **SidebarViewController.m:** Sidebar navigation logic.  
- **tableMoreViews.m:** Fetch and display dynamic content from API.  
- **Reachability.m:** Handles network connectivity.  
- **MBProgressHUD.m:** Displays loading indicators during network requests.

---

## 📚 **How to Use the App**

1. Open the app and navigate through the sidebar menu.  
2. Check the latest **News** and **Updates** fetched dynamically.  
3. Explore high-quality visuals on the **Home Screen Slider**.  
4. Use **Contact** and **About** sections for restaurant information.

---

## 👨‍💻 **Developers**

- **Lead Developer:** Fabricio Aguiar de Padua  
- **Contributor:** Simon
- **Linkedin:** www.linkedin.com/fabricio-padua

---

## 📝 **License**

This project is licensed under the **MIT License**.

---

## 🤝 **Contributing**

We welcome contributions! If you’d like to add features, report bugs, or improve documentation, please create an issue or submit a pull request.

---

**Thank you for using the Noh & Co. Restaurant App!** 🍴📲

**Dublin, Ireland — 2015**

