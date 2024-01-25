import 'package:flutter/material.dart';

class temp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Complex Screen Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ComplexScreen(),
    );
  }
}

class ComplexScreen extends StatefulWidget {
  @override
  _ComplexScreenState createState() => _ComplexScreenState();
}

class _ComplexScreenState extends State<ComplexScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Complex Screen'),
      ),
      body: _buildTabContent(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Widget _buildTabContent(int index) {
    switch (index) {
      case 0:
        return HomeTab();
      case 1:
        return SearchTab();
      case 2:
        return ProfileTab();
      default:
        return Container(); // Handle additional tabs as needed
    }
  }
}

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome to My App',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Featured Items',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  FeaturedItemCard(
                    title: 'Product 1',
                    imageUrl: 'https://tse4.mm.bing.net/th?id=OIP.pKhTNEKuS9U3zpV9P5zdfwHaH3&pid=Api&P=0&h=180',
                  ),
                  FeaturedItemCard(
                    title: 'Product 2',
                    imageUrl: 'https://example.com/product2.jpg',
                  ),
                  FeaturedItemCard(
                    title: 'Product 3',
                    imageUrl: 'https://example.com/product3.jpg',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class FeaturedItemCard extends StatelessWidget {
  final String title;
  final String imageUrl;

  FeaturedItemCard({
    required this.title,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            imageUrl,
            height: 120,
            width: 200,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
class SearchTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Search',
                prefixIcon: Icon(Icons.search),
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Filter Options',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FilterOptionChip(label: 'Filter 1'),
                FilterOptionChip(label: 'Filter 2'),
                FilterOptionChip(label: 'Filter 3'),
              ],
            ),
            SizedBox(height: 16),
            Text(
              'Search Results',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  SearchResultItem(
                    title: 'Result 1',
                    description: 'Description for Result 1.',
                  ),
                  SearchResultItem(
                    title: 'Result 2',
                    description: 'Description for Result 2.',
                  ),
                  SearchResultItem(
                    title: 'Result 3',
                    description: 'Description for Result 3.',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FilterOptionChip extends StatelessWidget {
  final String label;

  FilterOptionChip({required this.label});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(label),
      onDeleted: () {
        // Handle chip deletion
      },
    );
  }
}

class SearchResultItem extends StatelessWidget {
  final String title;
  final String description;

  SearchResultItem({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      child: ListTile(
        title: Text(title),
        subtitle: Text(description),
        onTap: () {
          // Handle item tap
        },
      ),
    );
  }
}
class ProfileTab extends StatefulWidget {
  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;
  @override
  void initState() {
    super.initState();

    // Set up animation
    _animationController = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );

    _animation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );

    // Trigger the animation when the page is first built
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: FadeTransition(
        opacity: _animation,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.blue,
                backgroundImage: NetworkImage(
                  'https://example.com/profile_image.jpg',
                ),
              ),
              SizedBox(height: 16),
              Text(
                'John Doe',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'john.doe@example.com',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Bio',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                    'Fusce sodales, justo et sagittis aliquet, elit nisi congue augue, '
                    'vel convallis elit turpis a libero.',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
