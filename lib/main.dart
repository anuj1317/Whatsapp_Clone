import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: homepage(),
));


class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}


class _homepageState extends State<homepage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  ScrollController _scrollController;

  @override
  void initState() {
    _tabController = new TabController(length: 4, vsync: this);
    _scrollController = new ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder: (BuildContext context, bool innerscrolled) {
          return <Widget>[
            SliverAppBar(
              actions: <Widget>[
                Icon(Icons.search),
                SizedBox(
                  width: 15,
                ),
                Icon(Icons.more_vert)
              ],
              pinned: true,
              floating: true,
              centerTitle: false,
              backgroundColor: Color(0xFF075e54),
              title: Text('Whatsapp'),
              bottom: TabBar(
                  indicatorWeight: 5.0,
                  indicatorColor: Colors.white,
                  controller: _tabController,
                  tabs: [
                    Tab(
                      child: Icon(Icons.photo_camera),
                    ),
                    Tab(
                      child: Text('CHATS'),
                    ),
                    Tab(
                      child: Text('STATUS'),
                    ),
                    Tab(
                      child: Text('CALLS'),
                    ),
                  ]),
            )
          ];
        },
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            Image.network('https://www.askideas.com/media/50/Funny-Looking-Jethalal-Gada-Picture.jpg'),
            Chats(),
            Status(),
            Calls(),
          ],
        ),
      ),
    );
  }
}

class Chats extends StatefulWidget {
  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  List<String> names = ["Anuj", "Ram", "Shyam","Him","Wc","ASR","Army","Anuj"];

  List<String> text = ["hello", "Whats up?", "how you doin?","Hi","Doing well??","Hey!!","Gotcha!!","Bye"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF25d366),
        child: Center(
          child: Icon(Icons.message),
        ),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: names.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://miro.medium.com/max/554/1*Ld1KM2WSfJ9YQ4oeRf7q4Q.jpeg'),
                    ),
                    title: Text(names[index],style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: Text(text[index]),
                    trailing: Text('10:00 AM'),
                  ),
                  Divider(
                    height: 5,
                  ),
                ],
              );

            }),
      ),
    );
  }
}

//Status Class

class Status extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF25d366),
        child: Center(
          child: Icon(Icons.photo_camera),
        ),
      ),
      body: ListView(
        children:<Widget> [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://miro.medium.com/max/554/1*Ld1KM2WSfJ9YQ4oeRf7q4Q.jpeg'),
            ),
            title: Text('My Status',style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text('Add Status'),
          ),
          Container(
            color: Colors.grey[200],
            width: MediaQuery.of(context).size.width,
            height: 20,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text('Recent Updates',style: TextStyle(color: Colors.grey),),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://miro.medium.com/max/554/1*Ld1KM2WSfJ9YQ4oeRf7q4Q.jpeg'),
            ),
            title: Text('WC',style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text('Today,2:00 PM'),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://miro.medium.com/max/554/1*Ld1KM2WSfJ9YQ4oeRf7q4Q.jpeg'),
            ),
            title: Text('Anuj',style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text('Today,1:00 PM'),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://miro.medium.com/max/554/1*Ld1KM2WSfJ9YQ4oeRf7q4Q.jpeg'),
            ),
            title: Text('Ram',style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text('Today,10:00 AM'),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://miro.medium.com/max/554/1*Ld1KM2WSfJ9YQ4oeRf7q4Q.jpeg'),
            ),
            title: Text('Shyam',style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text('Today,11:00 AM'),
          ),ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://miro.medium.com/max/554/1*Ld1KM2WSfJ9YQ4oeRf7q4Q.jpeg'),
            ),
            title: Text('Him',style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text('Today,11:30 AM'),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://miro.medium.com/max/554/1*Ld1KM2WSfJ9YQ4oeRf7q4Q.jpeg'),
            ),
            title: Text('AS',style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text('Today,11:35 AM'),
          ),

        ],
      ),
    );
  }
}


//Calls Class

class Calls extends StatefulWidget {
  @override
  _CallsState createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF25d366),
        child: Center(
          child: Icon(Icons.add_call),
        ),
      ),
      body: ListView(
        children:<Widget> [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://www.askideas.com/media/50/Funny-Looking-Jethalal-Gada-Picture.jpg'),
            ),
            title: Text('Anuj',style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text('Today,11:35 AM'),
            trailing: Icon(Icons.call,color: Color(0xFF25d366)),
          ),

          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://www.askideas.com/media/50/Funny-Looking-Jethalal-Gada-Picture.jpg'),
            ),
            title: Text('ASR',style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text('Today,12:35 AM'),
            trailing: Icon(Icons.video_call,color: Color(0xFF25d366)),
          ),

          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://www.askideas.com/media/50/Funny-Looking-Jethalal-Gada-Picture.jpg'),
            ),
            title: Text('Ram',style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text('Today,12:40 AM'),
            trailing: Icon(Icons.video_call,color: Color(0xFF25d366)),
          ),

          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://www.askideas.com/media/50/Funny-Looking-Jethalal-Gada-Picture.jpg'),
            ),
            title: Text('Shyam',style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text('Today,4:00 PM'),
            trailing: Icon(Icons.call,color: Color(0xFF25d366) ,),
          ),


        ],
      ),

    );
  }
}

