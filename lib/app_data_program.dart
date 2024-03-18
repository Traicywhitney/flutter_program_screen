class AppDataProgram {
  final String programImage;
  final String programName;
  final String shortDescription;
  final String lessons;


  AppDataProgram(this.programImage, this.programName,this.shortDescription,this.lessons);
}

List<AppDataProgram> appDataProgram = [
  AppDataProgram('images/lifestyle.png', 'LIFESTYLE','A Complete guide for your \nnew born baby','16 lessons'),
  AppDataProgram('images/working_women.jpg','WORKING PARENTS', 'Understanding of human \nbehaviour','12 lessons'),

];
class AppDataEvents {
  final String eventImage;
  final String eventName;
  final String eventDescription;
  final String eventDay;


  AppDataEvents(this.eventImage, this.eventName,this.eventDescription,this.eventDay);
}

List<AppDataEvents> appDataEvents = [
  AppDataEvents('images/exercise.png', 'BABYCARE','Understanding of human \nbehaviour','13Feb,sunday'),
  AppDataEvents('images/exercise.png','BABYCARE', 'Understanding of human \nbehaviour','13Feb,sunday'),

];
class AppDataLessons {
  final String lessonImage;
  final String lessonName;
  final String lessonDescription;
  final String duration;


  AppDataLessons(this.lessonImage, this.lessonName,this.lessonDescription,this.duration);
}

List<AppDataLessons> appDataLessons = [
  AppDataLessons('images/exercise.png', 'BABYCARE','Understanding of human \nbehaviour','3min'),
  AppDataLessons('images/exercise.png','BABYCARE', 'Understanding of human \nbehaviour','1min'),

];
