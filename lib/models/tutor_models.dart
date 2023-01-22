class TutorDetailsModels {
  final String id;
  final String userType;
  final String name;
  final String photo;
  final String subtitle;
  final double rating;
  final int totalRatings;
  final int totalStudent;
  final int experience;
  final String address;
  final double priceHours;
  final double discountPrice;
  final int discountPercentage;
  final List<TeachesModel> teaches;
  final String about;

  const TutorDetailsModels({
    required this.id,
    required this.userType,
    required this.name,
    required this.photo,
    required this.subtitle,
    required this.rating,
    required this.totalRatings,
    required this.totalStudent,
    required this.experience,
    required this.address,
    required this.priceHours,
    required this.discountPrice,
    required this.discountPercentage,
    required this.teaches,
    required this.about,
  });

  static List<TutorDetailsModels> generatedProvider = [
    TutorDetailsModels(
      id: '1',
      userType: 'tutor',
      name: 'Laxhman Narayan',
      photo:
          'https://www.allisonacademy.com/wp-content/uploads/2021/12/Teacher-in-the-classroom.jpg',
      subtitle:
          'I can teach Accounting,Business mathematics,financial management and cost accounting.I am staying in cuttack. Preferably to teach at cuttack and Bhubaneswar.',
      rating: 4.5,
      totalRatings: 1200,
      totalStudent: 165,
      experience: 4,
      address: 'Bhubaneswar, Odisha 751007',
      priceHours: 860.00,
      discountPrice: 0.0,
      discountPercentage: 0,
      teaches: [
        TeachesModel(
            stdClass: '10',
            subject: ['Mathematics', 'Life Science' 'Geography']),
        TeachesModel(
            stdClass: '11', subject: ['Mathematics', 'Physics', 'Chemistry']),
        TeachesModel(
            stdClass: '12', subject: ['Mathematics', 'Physics', 'Chemistry']),
      ],
      about:
          'I have done M.com and MBA(finance) and continuing P.hd.I am working as a lecturer in commerce in Kalinga Bharati Residential college.Along with I am taking the classes of BBA,BCA,B.sc-ITM,MBA andMFC at Kushagra college.My contact no. is (concealed information)And you can mail me at (concealed information)',
    ),
    TutorDetailsModels(
      id: '2',
      userType: 'tutor',
      name: 'Sudhakar Sahoo',
      photo:
          'https://www.teachhub.com/wp-content/uploads/2020/05/Top-5-Teaching-Strategies-scaled.jpg',
      subtitle:
          'I will share my expertise with the student community where they get a job.',
      rating: 4.5,
      totalRatings: 800,
      totalStudent: 300,
      experience: 6,
      address: 'Bhubaneswar, Odisha 751007',
      priceHours: 650.00,
      discountPrice: 0.0,
      discountPercentage: 0,
      teaches: [
        TeachesModel(
            stdClass: '10',
            subject: ['Mathematics', 'Life Science' 'Geography']),
        TeachesModel(
            stdClass: '11', subject: ['Mathematics', 'Physics', 'Chemistry']),
        TeachesModel(
            stdClass: '12', subject: ['Mathematics', 'Physics', 'Chemistry']),
      ],
      about:
          'I am business management graduate leading to MBA degree from Sambalpur University. Having 17 years of teaching experience to MBA students in various subjects of Marketing Management. I also have my own consulting company where I can provide the entry-level job to my students. For the same, I will also train them how to face interview and how to get a job without stress.',
    ),
    TutorDetailsModels(
      id: '1',
      userType: 'tutor',
      name: 'Sarat Kumar Samantaray',
      photo:
          'https://www.graduateprogram.org/wp-content/uploads/2019/08/Aug-22-5-skills-every-teacher-should-develop-in-2019_web.jpg',
      subtitle:
          'Commerce solution for all commerce students who continuing intermediate, graduation and post graduation',
      rating: 4.5,
      totalRatings: 380,
      totalStudent: 500,
      experience: 5,
      address: 'Bhubaneswar, Odisha 751007',
      priceHours: 350.00,
      discountPrice: 0.0,
      discountPercentage: 0,
      teaches: [
        TeachesModel(
            stdClass: '10',
            subject: ['Mathematics', 'Life Science' 'Geography']),
        TeachesModel(
            stdClass: '11', subject: ['Mathematics', 'Physics', 'Chemistry']),
        TeachesModel(
            stdClass: '12', subject: ['Mathematics', 'Physics', 'Chemistry']),
      ],
      about:
          'I am a PhD scholar of lovely Professional University, panjab Completed my masters from Utkal university, Odisha Completed graduation from Utkal university, Odisha Intermediate from CHSE Odisha Matriculation from BSE Odisha I have proficiency in commerce subjects like accounting, costing, business mathematics, economics, taxation, management, etc',
    ),
  ];
}

class TeachesModel {
  final String stdClass;
  final List<String> subject;

  TeachesModel({required this.stdClass, required this.subject});
}
