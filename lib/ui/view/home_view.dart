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
              return ListView.builder(
                itemCount: snapshot.data!.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 12,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            snapshot.data![index].name.toString(),
                          ),
                          Text(
                            snapshot.data![index].description.toString(),
                          ),
                          // Image.network(
                          //   snapshot.data![index].pictureId,
                          // ),
                          Text(
                            snapshot.data![index].city.toString(),
                          ),
                          Text(
                            snapshot.data![index].rating.toString(),
                          )
                        ],
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
