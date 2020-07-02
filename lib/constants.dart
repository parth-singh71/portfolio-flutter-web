const kAppName = 'Parth Singh';
const kTagLine = 'Android and Python Developer';
const kVersion = 'Version 1.0.0';

// page constants
const kIndexPage = '/index';
const kHomePage = '/home';
const kAboutPage = '/about';
const kProjectsPage = '/projects';
const kSkillsPage = '/skills';
const kContactPage = '/contact';
const kSingleProject = '/singleProject';

// project page constants
const kpFacialFeature = '/projects/facial-feature-detection';
const kpBodyPart = '/projects/body-part-detection';
const kpWritersBlog = '/projects/writers-blog';
const kpVisionBoard = '/projects/vision-board';
const kpFridayAI = '/projects/friday-ai';
const kpChatOn = '/projects/chatOn';
const kpTimeable = '/projects/timeable';
const kpSchoolManager = '/projects/school-manager';
const kpGenderPredictor = '/projects/gender-predictor';

//enums
enum Webpage { home, about, projects, skills, contact, singleProject }

const aboutText1 =
    'I am a fourth year Btech student from India who loves to code and solve real life problems. I make Android and iOS apps for fun and work on some Artificial Intelligence projects to further improve my skills. I love to draw and I am really creative. I even like UI designing a bit.';
const aboutText2 =
    'Even though I have experience with many languages like c, c++, java, javascript, PHP, python, R, mysql and dart. But I\'m most comfortable with python, dart and java out of which Python is my favorite programming language, and I enjoy coding in it. Not just because its simple and straightforward but because of its  great library support.';
const aboutText3 =
    'I have worked on many different technologies ranging from Machine Learning, Deep Learning, Native Android Development, Flutter Development for hybrid Apps, Django and Django REST Framework. My goal is to create something useful that not only improves the quality of my life, but also benefits other individuals.';
const aboutText4 =
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.';

const aboutShortText =
    'I am a fourth year Btech student from India who loves to code and solve real life problems. I make Android and iOS apps for fun and work on some Artificial Intelligence projects to further improve my skills.';
// Photo by Safar Safarov on Unsplash
const aboutEduAndExp1 =
    "I have graduated class tenth from St. Peter’s College, Agra, Uttar Pradesh and class twelfth from Lifeline Public School, Agra, Uttar Pradesh.";
const aboutEduAndExp2 =
    "I am currently pursuing engineering in the Computer and Communications branch from Manipal University, Jaipur, Rajasthan, India.";
const aboutEduAndExp3 =
    "In 2019, I did an internship in Mtatva, which is a primary healthcare IT company in Bangalore, India. There I worked on a Body Part Detection project in which the computer must figure out which body part is being pointed to by a human, using artificial intelligence.";

const aboutHobby =
    "Generally I like doing anything that is creative and interesting but to name a few, I basically have three hobbies:";
const aboutHobby1 =
    "Programming is my hobby as well as my passion, I love solving real life problems.";
const aboutHobby2 =
    "I like to design beautiful mobile User Interfaces in my free time.";
const aboutHobby3 = "I even like to draw and paint.";

final Map<String, String> imgMap = {
  //slide 1
  'images/python.png': 'Python',
  'images/flutter.png': 'Flutter',
  'images/dart.png': 'Dart',
  //slide 2
  'images/django_1.png': 'Django',
  'images/drf.png': 'Django REST Framework',
  'images/linux.png': 'Linux',
  //slide 3
  'images/android.png': 'Android',
  'images/java.png': 'Java',
  'images/artificial-intelligence.png': 'Artificial Intelligence',
  //slide 4
  'images/ds.png': 'Databases',
  'images/js.png': 'JavaScript',
  'images/react.png': 'React',
  //slide 5
  'images/mysql.png': 'MySql',
  'images/aws.png': 'Amazon Web Services',
  'images/heroku.png': 'Heroku',
};

const kNoImgAvailable = 'images/no_img_available.png';

// contact links
mixin contactLinks {
  static const String email = 'mailto:parth.singh71@gmail.com';
  static const String github = 'https://github.com/parth-singh71';
  static const String stack_overflow =
      'https://stackoverflow.com/users/10129545/parth-singh71';
  static const String google_play =
      'https://play.google.com/store/apps/developer?id=Psect';
  static const String linkedin = 'https://www.linkedin.com/in/parthsingh71/';
  static const String facebook = 'https://www.facebook.com/parth.singh3371';
  static const String instagram = 'https://www.instagram.com/parth.singh71/';
  static const String twitter = 'https://twitter.com/parth_singh71';
}

//project details
const Map<String, dynamic> facialFeatureDetails = {
  'projectTitle': "Facial Feature Detection",
  'projectSummary':
      "Developed a deep neural network model to predict different facial features of a person which can be used in face reading.",
  'projectDuration': "June 2020",
  'technologies': "Deep Learning | keras | Mask RCNN | Python",
  'projectLinks': <String, String>{}, //ex- {"Github": "link"},

  'services': '',
  'tools': '',
  'pictures': <String>[],
  'projectDetailsList': <String>[], //todo
};

const Map<String, dynamic> writersBlogDetails = {
  'projectTitle': "Writers Blog",
  'projectSummary':
      "Developed a social networking platform where people can express themselves using words. Had options to like, comment and share posts.",
  'projectDuration': "July 2019 - August 2019",
  'technologies': "Android | Python | mysql | aws",
  'projectLinks': <String, String>{}, //ex- {"Github": "link"},

  'services': 'Amazon Web Services- ec2 Amazon Linux 2 Server',
  'tools': 'Python, Android Studio, mysql, phpmyadmin',
  'pictures': <String>[],
  'projectDetailsList': <String>[
    'Developed a social platform where people can express themselves using words.',
    'Developed the backend using python.',
    'Used json parsing to interact with mysql database from android.',
    'Developed an encrypted login and signup system for the app.',
    'Added functionality to add posts with hashtags.',
    'Preprocessed hashtags to save database space.',
    'Added functionality to like, comment and share.',
    'Added functionality to view, search and follow  profiles.',
    'Created people you may know tab.',
    'Developed a trending tab to get the famous posts according to number of likes or most popular hashtags.',
  ]
};

const Map<String, dynamic> bodyPartDetails = {
  'projectTitle': "Body Part Detection",
  'projectSummary':
      "Developed a convolutional neural network model to predict which body part is being pointed by the person using keras and Python.",
  'projectDuration': "June 2019 - July 2019",
  'technologies': "Deep Learning | keras | Python",
  'projectLinks': <String, String>{}, //ex- {"Github": "link"},

  'services': '',
  'tools': 'Python, Keras, openCv',
  'pictures': <String>[],
  'projectDetailsList': <String>[
    'Developed a CNN model to predict which body part is being pointed by the person.',
    'Used transfer learning to improve the results.',
    'Didn’t find any previously made dataset on the internet so prepared my own dataset.',
    'To prepare the dataset I took time lapse videos of people pointing at different parts of their body.',
    'Then I extracted the frames using python and openCv.',
    'At the end of the internship I got the accuracy of 86%.'
  ]
};
//vb here
const Map<String, dynamic> visionBoardDetails = {
  'projectTitle': "Vision Board",
  'projectSummary':
      "Developed a native android app where people could upload their goals. People could get daily reminders to spend some time for their dreams, Also had an inbuilt lock for privacy.",
  'projectDuration': "February 2019 - March 2019",
  'technologies': "Android | Sqlite",
  'projectLinks': <String, String>{}, //ex- {"Github": "link"},
  'services': '',
  'tools': 'Android Studio, sqlite',
  'pictures': <String>[],
  'projectDetailsList': <String>[
    'Developed an android app where people could upload their goals.',
    'Developed  functionality to get daily reminders to spend some time for their dreams.',
    'Created a functionality to lock your Vision Board to prevent others from spying on your dreams.',
    'Used Firebase cloud messaging for sending update notifications.',
    'Added functionality to share goals in the form of text or image to whatsapp and other apps.',
    'Later added option to manually set priority of your goals.',
    'Added different themes for users.'
  ]
};

const Map<String, dynamic> fridayAIDetails = {
  'projectTitle': "Friday AI",
  'projectSummary':
      "Developed a native chatbot android app using java. Developed  a custom API using Python which took the user input message and responded accordingly. The chatbot could talk, type, search the web, crack jokes, Open third party apps etc.",
  'projectDuration': "July 2019",
  'technologies': "nlp | Python | Android | aws",
  'projectLinks': <String, String>{}, //ex- {"Github": "link"},

  'services': 'Amazon Web Services- ec2 Amazon Linux 2 Server',
  'tools': 'Python, Android Studio, sqlite',
  'pictures': <String>[],
  'projectDetailsList': <String>[
    'Developed a chatbot app using python.',
    'Developed  an API which takes the user input message and responds accordingly.',
    'Used json parsing to interact with the API from android.',
    'Added text-to-speech so that the bot speaks while replying.',
    'All the chat data is stored in sqlite database for future progress.'
  ]
};

const Map<String, dynamic> chatOnDetails = {
  'projectTitle': "ChatOn",
  'projectSummary':
      "Developed a hybrid (Android / iOS) realtime chatting app using Flutter (Frontend), Django and Django REST Framework (Backend). Used Heroku Server to deploy the chatting API.",
  'projectDuration': "May 2020",
  'technologies': "Flutter | Django | Dart | Python | heroku",

//  'projectLinks': <String, String>{}, //ex- {"Github": "link"},
//
//  'services': 'Firebase',
//  'tools': 'Android Studio',
//  'pictures': <String>[],
//  'projectDetailsList': <String>[
//    'Developed an  Inquiry app for TPS India Team.',
//    'The basic purpose of the app was to circulate the open enquiries among the employees.',
//    'Used Firebase email authentication with option to reset passwords.',
//    'Developed functionality where the next meeting dates and order supply dates could be stored.',
//  ]
}; //todo

const Map<String, dynamic> timeableDetails = {
  'projectTitle': "Timeable",
  'projectSummary':
      "Developed a timetable management solution for college students and teachers, Users can set their timetable in the app then the app will notify 30 minutes prior to any upcoming classes for the day.",
  'projectDuration': "December 2019 - January 2020",
  'technologies': "Flutter | Sqlite | Dart",
//  'projectLinks': <String, String>{}, //ex- {"Github": "link"},
//
//  'services': 'Firebase',
//  'tools': 'Android Studio',
//  'pictures': <String>[],
//  'projectDetailsList': <String>[
//    'Developed an  Inquiry app for TPS India Team.',
//    'The basic purpose of the app was to circulate the open enquiries among the employees.',
//    'Used Firebase email authentication with option to reset passwords.',
//    'Developed functionality where the next meeting dates and order supply dates could be stored.',
//  ]
}; //todo
const Map<String, dynamic> schoolManagerDetails = {
  'projectTitle': "School Manager",
  'projectSummary':
      "Developed a Django website and API for managing multiple schools. Teachers could create classrooms under an organization, add participants and share the study material to the students.",
  'projectDuration': "May 2020",
  'technologies': "Django | Django REST Framework | Python",
//  'projectLinks': <String, String>{}, //ex- {"Github": "link"},
//
//  'services': 'Firebase',
//  'tools': 'Android Studio',
//  'pictures': <String>[],
//  'projectDetailsList': <String>[
//    'Developed an  Inquiry app for TPS India Team.',
//    'The basic purpose of the app was to circulate the open enquiries among the employees.',
//    'Used Firebase email authentication with option to reset passwords.',
//    'Developed functionality where the next meeting dates and order supply dates could be stored.',
//  ]
}; //todo
const Map<String, dynamic> genderPredictorDetails = {
  'projectTitle': "Gender Predictor",
  'projectSummary':
      "Created a python code which detects the gender of a person by analysing their name using Natural Language Processing and Python.",
  'projectDuration': "July 2019",
  'technologies': "nlp | Python",
//  'projectLinks': <String, String>{}, //ex- {"Github": "link"},
//
//  'services': 'Firebase',
//  'tools': 'Android Studio',
//  'pictures': <String>[],
//  'projectDetailsList': <String>[
//    'Developed an  Inquiry app for TPS India Team.',
//    'The basic purpose of the app was to circulate the open enquiries among the employees.',
//    'Used Firebase email authentication with option to reset passwords.',
//    'Developed functionality where the next meeting dates and order supply dates could be stored.',
//  ]
}; //todo

const Map<String, dynamic> tpsEnquiriesList = {
  'projectTitle': "TPS Enquiries",
  'projectSummary':
      "Developed an Inquiry app for TPS India Team. The basic purpose of the app was to circulate the open enquiries for new orders among the employees.",
  'projectDuration': "October 2018 - November 2018",
  'technologies': "Android | Firebase",
  'projectLinks': <String, String>{}, //ex- {"Github": "link"},

  'services': 'Firebase',
  'tools': 'Android Studio',
  'pictures': <String>[],
  'projectDetailsList': <String>[
    'Developed an  Inquiry app for TPS India Team.',
    'The basic purpose of the app was to circulate the open enquiries among the employees.',
    'Used Firebase email authentication with option to reset passwords.',
    'Developed functionality where the next meeting dates and order supply dates could be stored.',
  ]
};

const Map<String, dynamic> bmiCalculatorDetails = {
  'projectTitle': "BMI Calculator",
  'projectSummary':
      "Developed a Body Mass Index Calculator app and used Google’s Firebase Firestore for storing results to the backend.",
  'projectDuration': "July 2018 - August 2018",
  'technologies': "Android | Firebase | sqlite",
  'projectLinks': <String, String>{}, //ex- {"Github": "link"},

  'services': 'Firebase, GraphView Library',
  'tools': 'Android Studio, sqlite',
  'pictures': <String>[],
  'projectDetailsList': [
    'Developed a Body Mass Index Calculator app.',
    'Used Google’s Firebase Firestore for storing results to  backend.',
    'Used Firebase cloud messaging for sending daily notifications.',
    'Added in-app Weight and Height converters.',
    'Used graphview library and sqlite to store user weight records.',
    'Added functionality to change height and weight default units.',
    'Added functionality to share results in the form of text or image to whatsapp and other apps.',
    'Created  an Autofill Details option which autofill user details if logged in.',
  ]
};
