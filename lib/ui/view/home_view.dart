import 'package:belajar/global_resources.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data API Dicoding'),
      ),
      body: SafeArea(
        child: FutureBuilder<List<UserModel>>(
          future: RequestServices<List<UserModel>>()
              .request(ApiServices.userList()),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed(detail, arguments: snapshot.data[index]);
                      },
                      title: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 12,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                            'https://restaurant-api.dicoding.dev/images/small/${snapshot.data[index].pictureId}',
                            width: 200,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        // Text(
                        //   snapshot.data[index].description.toString(),
                        //   overflow: TextOverflow.ellipsis,
                        // ),
                        // SizedBox(
                        //   height: 10,
                        // ),
                        // Text(
                        //   snapshot.data[index].city.toString(),
                        //   overflow: TextOverflow.ellipsis,
                        // ),
                        // Text(
                        //   snapshot.data[index].rating.toString(),
                        // )
                      ),
                      subtitle: Text(
                        snapshot.data[index].name.toString(),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  );
                },
              );
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
