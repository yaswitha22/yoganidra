import 'package:appthon/profile.dart';
import 'package:flutter/material.dart';
class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  final List<Category> categories = [
    Category("Engineering", Colors.blue,"https://cdn.pixabay.com/photo/2017/03/23/09/34/artificial-intelligence-2167835_1280.jpg"),
    Category("Commerce", Colors.green,"https://cdn.pixabay.com/photo/2017/09/07/08/53/money-2724237_1280.jpg"),
    Category("Arts", Colors.orange,"https://cdn.pixabay.com/photo/2016/11/23/00/37/art-1851483_1280.jpg"),
    Category("Science", Colors.purple,"https://www.rmit.edu.au/content/dam/rmit/au/en/study-with-us/interest-areas/thumbnails/science-study-area-1220x732.jpg"),
    Category("Medical", Colors.red,"https://www.offtocollege.com/collegejournal/wp-content/uploads/2020/05/medicalfield.jpg"),
    Category("Business", Colors.teal,"https://www.passionateinmarketing.com/wp-content/uploads/2020/08/data-original-3.jpg"),
    Category("Legal Studies", Colors.indigo,"https://www.utm.edu/news/wp-content/uploads/2019/02/LegalStudiesOption.jpg"),
    Category("Hospitality and Tourism", Colors.yellow,"https://sdh.edu.sg/wp-content/uploads/2021/01/Asia-Hospitality-Careers-e1611818796560-1080x600.png"),
    Category("Social Sciences", Colors.brown,"https://leverageedu.com/blog/wp-content/uploads/2020/08/Branches-of-Social-Sciences-1.png"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Center(child: Text("STREAMS",
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)),
        flexibleSpace: Container(
        decoration: BoxDecoration(
        gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.topRight,
        colors: [Colors.blueGrey, Colors.black])),),),
        body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        ),
        itemCount: categories.length,
        itemBuilder: (context, index) {
        return Card(
        color: categories[index].color,
        child: InkWell(
        onTap: () {
        // Add your onTap logic here
        print('Category tapped: ${categories[index].name}');
        },
        child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image(image: NetworkImage(categories[index].imgpath)),
              SizedBox(height: 20,),
              Text(
              categories[index].name,
              style: TextStyle(
              color: Colors.black,
              fontSize: 23.0,
              fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        ),
        ),
        );
        },
        ),
      drawer: Drawer(
        child: ListView(
          padding:EdgeInsets.all(0),
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ), //BoxDecoration
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.white),
                accountName: Text(
                  "Yaswitha Katragadda",
                  style: TextStyle(fontSize: 18,color: Colors.black),
                ),
                accountEmail: Text("21A91A6164@aec.edu.in",style: TextStyle(color: Colors.black),),
                currentAccountPictureSize: Size.square(53),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text(
                    "Y",
                    style: TextStyle(fontSize: 30.0, color: Colors.black),
                  ), //Text
                ), //circleAvatar
              ), //UserAccountDrawerHeader
            ),
            //DrawerHeader
            ListTile(
              leading: Icon(Icons.person),
              title: Text(' My Profile '),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>profile()));
              },
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text(' My Course '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading:Icon(Icons.workspace_premium),
              title:Text(' Go Premium '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading:Icon(Icons.video_label),
              title:Text(' Saved Videos '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.edit),
              title:Text(' Edit Profile '),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>profile()));
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title:  Text('LogOut'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
        );
  }
}
class Category {
  final String name;
  final Color color;
  final String imgpath;
  Category(this.name, this.color,this.imgpath);
}
