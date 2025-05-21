import 'package:flutter/material.dart';
import 'package:ostad_flutter_exm/responsive_builder.dart';
import 'deshBoardCard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
        mobile: _buildMobileLayout(),
        tablet: _buildTabletLayout(),
        desktop: _buildDesktopLayout());
  }

  Widget _buildMobileLayout() {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mobile'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _getSummarySection(
              crossAxisCount: 2,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTabletLayout() {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tablet'),
        centerTitle: true,
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _getSummarySection(
              crossAxisCount: 3,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDesktopLayout() {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Desktop'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _getSummarySection(
              crossAxisCount: 4,
            ),
          ],
        ),
      ),
    );
  }

  Widget _getSummarySection({
    required int crossAxisCount,
    // required double childAspectRatio,
  }) {
    return GridView(
      shrinkWrap: true,
      primary: false,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          // childAspectRatio: ratio,
          mainAxisExtent: 370),
      children: const [
        deshBoardCard(
          imageUrl: 'https://flagcdn.com/w320/bd.png',
          title: 'Bangladesh',
          city: 'Dhaka',
          population: '168 163 758 (2020)',
          area: '147 570 km2',
          elevatedButton: 'See Details',
        ),
        deshBoardCard(
          imageUrl: 'https://flagcdn.com/w320/af.png',
          title: 'Afghanistan',
          city: 'Kabul',
          population: '32 225 560 (2019)',
          area: '652 230 km2',
          elevatedButton: 'See Details',
        ),
        deshBoardCard(
          imageUrl: 'https://flagcdn.com/w320/dz.png',
          title: 'Algeria',
          city: 'Algiers',
          population: '43 000 000 (2019)',
          area: '2 381 740 km2',
          elevatedButton: 'See Details',
        ),
        deshBoardCard(
          imageUrl: 'https://flagcdn.com/w320/ar.png',
          title: 'Argentina',
          city: 'Buenos Aires',
          population: '44 938 712 (2019)',
          area: '2 780 400 km2',
          elevatedButton: 'See Details',
        ),
        deshBoardCard(
          imageUrl: 'https://flagcdn.com/w320/au.png',
          title: 'Australia',
          city: 'Canberra',
          population: '25 627 280 (2020)',
          area: '7 692 020 km2',
          elevatedButton: 'See Details',
        ),
        deshBoardCard(
          imageUrl: 'https://flagcdn.com/w320/at.png',
          title: 'Austria',
          city: 'Vienna',
          population: '8 902 600 (2020)',
          area: '83 871 km2',
          elevatedButton: 'See Details',
        ),
        deshBoardCard(
          imageUrl: 'https://flagcdn.com/w320/bt.png',
          title: 'Bhutan',
          city: 'Thimphu',
          population: '741 672 (2019)',
          area: '38 394 km2',
          elevatedButton: 'See Details',
        ),
        deshBoardCard(
          imageUrl: 'https://flagcdn.com/w320/br.png',
          title: 'Brazil',
          city: 'Brasília',
          population: '211 173 432 (2020)',
          area: '8 515 770 km2',
          elevatedButton: 'See Details',
        ),
        deshBoardCard(
          imageUrl: 'https://flagcdn.com/w320/ca.png',
          title: 'Canada',
          city: 'Ottawa',
          population: '37 935 814 (2020)',
          area: '9 984 670 km2',
          elevatedButton: 'See Details',
        ),
        deshBoardCard(
          imageUrl: 'https://flagcdn.com/w320/cl.png',
          title: 'Chile',
          city: 'Santiago',
          population: '19 107 216 (2019)',
          area: '756 102 km2',
          elevatedButton: 'See Details',
        ),
        deshBoardCard(
          imageUrl: 'https://flagcdn.com/w320/cn.png',
          title: 'China',
          city: 'Beijing',
          population: '1 401 492 920 (2020)',
          area: '9 596 960 km2',
          elevatedButton: 'See Details',
        ),
        deshBoardCard(
          imageUrl: 'https://flagcdn.com/w320/co.png',
          title: 'Colombia',
          city: 'Bogotá',
          population: '49 395 678 (2019)',
          area: '1 141 750 km2',
          elevatedButton: 'See Details',
        ),
      ],
    );
  }
}
