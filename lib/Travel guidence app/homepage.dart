import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:travel_guidence_app_asessment1/Travel%20guidence%20app/places.dart';
import 'model/category.dart';
import 'model/places.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override

  final List<Category> categoryList = [];
  String path = 'assets/icons';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    categoryList.add (Category(title:'ABOUT RAJKOT',icon:'$path/cityscape.png',color:Colors.red,places:[Place(id: 0, title: 'Location', desc: 'Rajkot is situated in the state of Gujarat, India, and is the fourth-largest city in the state.', image: 'https://static.toiimg.com/thumb/msid-77662081,width-1280,height-720,resizemode-4/77662081.jpg'),Place(id: 1, title: 'Economic Hub', desc: 'he city is an important industrial and commercial hub in Gujarat. It has a strong presence in the fields of auto parts manufacturing, engineering, and jewelry.', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUn8Io7UQLceVkPsOURBObrLSK05oE2wpJ3Q&usqp=CAU')]));
    categoryList.add (Category(title:'HOW TO REACH',icon:'$path/bus.png' ,color:Colors.grey,places:[Place(id: 2, title: 'By road', desc: 'You can also reach Rajkot by hiring a private taxi or using your own vehicle.', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsowVRJSV5KJmGjrLwZkyyGxzU0N5NbJtFaQ&usqp=CAU'),Place(id:3 ,title:'By train ' ,desc:'Rajkot has a well-connected railway station, and trains from various parts of the country operate to and from here.You can check the availability of trains and book tickets through the official website of Indian Railways or other online ticketing platforms.' ,image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGoJCT3DUEp9jPdsUplmCGcQH_ZD16LGITtw&usqp=CAU')]));
    categoryList.add (Category(title:'RAJKOT IN MAP',icon:'$path/location.png',color:Colors.greenAccent,places:[Place(id: 4, title: 'Latitude', desc: 'The approximate latitude of Rajkot, Gujarat, India, is around 22.3039 degrees North. This latitude coordinate places Rajkot in the northern hemisphere of the Earth. Keep in mind that these coordinates are approximate, and for precise locations, you may want to use a mapping service like Google Maps or a GPS device.', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTW8CYVY_uv3c6MaR3XlxuhTMdhgIpkBtoMKg13v34-X6KRMoSR_m7xfc5mUFoYyD8Q1BU&usqp=CAU'),Place(id: 5, title: 'Longitude', desc: 'The approximate longitude of Rajkot, Gujarat, India, is around 70.8022 degrees East. This longitude coordinate places Rajkot to the east of the prime meridian. As with latitude, these coordinates are approximate, and for precise locations, it recommended to use a mapping service like Google Maps or a GPS device.', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTeCjywAV9lFmt7kUBi3CTXs8Fs3reOapEs2g&usqp=CAU')]));
    categoryList.add (Category(title:'HISTORICAL PLACES',icon:'$path/city-hall.png',color:Colors.blueGrey,places:[Place(id: 6, title: 'Watson Museum and Library', desc: 'This museum displays artifacts related to human history and culture, along with a library that has a vast collection of books.', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSore2ytegRpV351uiLoKWDbtE9x5CrtWuhHw&usqp=CAU'),Place(id: 7, title: 'Kaba Gandhi No Delo', desc: 'This is the ancestral home of Mahatma Gandhi. The place now houses a permanent exhibition of Gandhi items and belongings.', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKaeY5En4NVrZl3w-X5jyNXd2X5hxH1fE8WQ&usqp=CAU')] ));
    categoryList.add (Category(title:'DEVOTIONAL PLACES',icon:'$path/sri-ranganathasvamy.png',color: Colors.teal,places:[Place(id: 8, title: 'Ramakrishna Ashram', desc: 'Located in the heart of Rajkot, Ramakrishna Ashram is a spiritual and cultural center that follows the teachings of Sri Ramakrishna Paramahansa.', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtSq3k-lGbNgZbqu4gFYsTtZyrzLTcG_oeqw&usqp=CAU'),Place(id: 9, title: 'BAPS Shri Swaminarayan Mandir', desc: 'Part of the Bochasanwasi Akshar Purushottam Swaminarayan Sanstha (BAPS), this temple is known for its intricate architecture and religious activities.', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOkuLGxrvxmIBZ6mQKijdeZkU2Hxp7Eelk-Q&usqp=CAU')]));
    categoryList.add (Category(title:'AMUSEMENT PARK',icon:'$path/amusement-park.png',color:Colors.brown,places: [Place(id: 10, title: 'Rajkot Lok Mela', desc: 'It seems like there might be a misunderstanding in your question. "Mela" typically refers to a fair or festival in Indian culture, and "Rajkot" is a city in the Indian state of Gujarat. If you are asking about a specific fair or festival ("mela") happening in Rajkot, I would need more details to provide accurate information.', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSo6W7LxzGCiXOcSfaFlV7CYYk_pZ6VmUNCo1FSA5gv0sWXk7yelTYQOq4eTHpQrcQbx74&usqp=CAU')]));
    categoryList.add (Category(title:'DAMS/LAKE',icon:'$path/lake.png',color:Colors.blue,places:[Place(id: 11, title:'Sursagar Lake', desc: 'Sursagar Lake, also known as Chand Talao, is a popular lake in the heart of Vadodara. It is surrounded by a well-maintained garden and is a popular spot for locals.', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSixDSTsyspr3Cv3D5XnxiS_jEfpd42k9BCFQ&usqp=CAU'),Place(id: 12, title: 'Ajwa Sarovar', desc: 'Ajwa Sarovar is a reservoir located about 22 kilometers from Vadodara. It is a scenic location surrounded by hills and is a popular picnic spot.', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSKelkFTSB1C_EVUiTegM5uyeLCsWbqbgRpg&usqp=CAU')]));
    categoryList.add (Category(title:'OTHERS PLACES',icon:'$path/castle.png',color:Colors.red,places: [Place(id: 13, title:'Laxmi Vilas Palace', desc: 'This majestic palace is one of the most iconic landmarks in Vadodara. It was built by Maharaja Sayajirao Gaekwad III and is a blend of Indian and European architectural styles. The palace is now a museum and showcases an impressive collection of art and artifacts.', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRw2osNowyFR1qkIspjkgZEJErtY2MvVR6fLQ&usqp=CAU'),Place(id: 14, title: 'Vadodara Railway Station', desc: 'The railway station is known for its architectural beauty, featuring a blend of Indian and European styles.', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIjIEDKWcbtAzfsQDkTBPgSaSxFmguZqOazg&usqp=CAU')]));
    categoryList.add (Category(title:'PLACES TO SEE AROUND',icon:'$path/photograph.png',color: Colors.pinkAccent.shade400,places: [Place(id: 15, title: 'Statue of Unity', desc: 'While a bit farther away (approximately 120 kilometers), the Statue of Unity is a monumental statue of Sardar Vallabhbhai Patel, the first Deputy Prime Minister and Home Minister of India. Its located in the Narmada district.', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFkGj0qzjek2xetYttdTPRMGr_CblItOhOaw&usqp=CAU'),Place(id: 16, title: 'Dakor', desc: ' Located about 94 kilometers from Vadodara, Dakor is known for its temple dedicated to Lord Krishna, the Ranchhodrai Temple. The temple attracts a large number of devotees.', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4nO3ux9lKDEsgy6E1bpcrLCX9pjGyA3oEFA&usqp=CAU'),Place(id: 17, title: 'Pavagadh', desc: 'Apart from the Pavagadh Hill within the Champaner-Pavagadh Archaeological Park, Pavagadh itself is a town with historical significance. The Mahakali Temple atop the Pavagadh Hill is a major pilgrimage site.', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSapz-Lga-QiQl9-kB-Xvx7RlqhIEtk6XW9_g&usqp=CAU')]));
    categoryList.add (Category(title:'CINEMAS', icon:'$path/cinema.png',color:Colors.purple,places: [Place(id: 18, title:'INOX Cinemas', desc: 'INOX has multiple screens and is a popular cinema chain in India. In Vadodara, you might find INOX theaters at prominent shopping malls or entertainment complexes.', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDH9dAJ6gvkVzS3hiPrk1cuxNCKYsG7AvWwg&usqp=CAU'),Place(id: 19, title: 'PVR Cinema', desc: 'PVR is another well-known cinema chain with a presence in various cities. Check if there is a PVR cinema at any of the shopping malls in Vadodara.', image: 'https://assets.telegraphindia.com/telegraph/2023/Jan/1674024326_pvr.jpg')]));
    categoryList.add (Category(title:'HOTELS', icon:'$path/hotel.png',color:Colors.amber,places: [Place(id: 20, title:'Sayaji Hotel Vadodara', desc: 'A popular luxury hotel in Vadodara, known for its excellent amenities and services.', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRgzr3S9v5TmsM-jLp8ITzHBa5iiHK2pFpCg&usqp=CAU'),Place(id: 21, title: 'Vadodara Marriott Hotel', desc: 'A well-known international chain hotel with upscale amenities and services.', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTACA9f2HAQyJD-kzSm7Ft8lMombDX5fD2EA&usqp=CAU')]));
    categoryList.add (Category(title:'MALLS',icon:'$path/shopping-mall.png',color:Colors.green.shade400,places:[Place(id: 22, title: 'VR Surat (Virtuous Retail)', desc: 'While not in Vadodara, if you are interested in exploring a larger mall, VR Surat is a shopping destination in nearby Surat, featuring a wide range of brands and entertainment options.', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScCd8N_F1HMPULAVPRzru14i7HeBac9LQYYw&usqp=CAU'),Place(id: 23, title: 'Inorbit Mall', desc: 'Inorbit Mall is a popular shopping destination in Vadodara. It houses a variety of national and international brands, along with a multiplex cinema, food court, and entertainment options.', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQb8Gkywb7iJffNq9dndA-p2hrTcaTmGSemqA&usqp=CAU')]));
    categoryList.add (Category(title:'TRAVEL GUIDE',icon:'$path/guidepost.png',color:Colors.deepPurple,places:[Place(id: 24, title: 'Online Search', desc: 'Conduct an online search for travel agencies or tour operators that specialize in the region you plan to visit, whether its a specific city, country, or continent.', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0V-pzHMnXe8_7v1aS1jiwhuG22gE1TV28SA&usqp=CAU'),Place(id: 25, title: 'Inquire About Guides', desc: 'Ask about the qualifications and experience of the guides the agency employs. A knowledgeable and experienced guide can significantly enhance your travel experience.', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS01Hz5E0jLiLGdMNm2juFmelP5TIiBhGQcPA&usqp=CAU')]));
    categoryList.add (Category(title:'DISTANCES', icon:'$path/distance.png',color:Colors.pinkAccent.shade700,places: [Place(id: 26, title: 'Vadodara Airport (BDQ) to Vadodara Railway Station', desc: 'Approximately 6 kilometers (about 3.7 miles).', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKb9A8nvfs3LdjX9kMWky3W6V-omRpiJ0J-g&usqp=CAU'),Place(id: 27, title: 'Vadodara Junction (Railway Station) to Sayaji Baug', desc: 'Approximately 3 kilometers (about 1.9 miles).', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8ZYT7x4n4dsm-2iMKleKPWTQz1LzYGRogYQ&usqp=CAU')]));
    categoryList.add (Category(title:'DEVELOPER',icon:'$path/coding.png',color:Colors.pink.shade900,places:[Place(id: 28, title: 'Job Portals', desc: 'Explore popular job portals like Naukri, Indeed, or LinkedIn, and search for software development positions in Vadodara.', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbLdlpmXrJ5WbESNJ_OqK5dQOvW9nMEk7G7w&usqp=CAU'),Place(id: 29, title: 'LinkedIn', desc: 'Use LinkedIn to search for software developers in Vadodara. You can filter your search based on location, skills, and industry.', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTK67pbykPpSxa6gRNlPL3fi8l68zldP4KtZw&usqp=CAU')]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // Number of columns
          crossAxisSpacing: 6.0, // Spacing between columns
          mainAxisSpacing: 6.0, // Spacing between rows
        ),
        itemCount: categoryList.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Places(categoryList[index])));
            },
            child: GridTile(
              child: Container(
                color: categoryList[index].color,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(categoryList[index].icon.toString(),
                      height: 50,
                      width: 50,
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      textAlign: TextAlign.center,
                      categoryList[index].title.toString(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}