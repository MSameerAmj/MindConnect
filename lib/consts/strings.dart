import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mindconnect/consts/images.dart';

const appname = "Mind Connect";
const nameHint = "Enter your name",
    passwordHint = "*****",
    emailHint = "abcd@gmail.com";
const name = "Name",
    password = "Password",
    email = "Email",
    retypePassword = "Retype Password";
const welcome = "Welcome!", username = "Username", actTrack = "Activity Track";
const currentExctitle = "Current Excercise:";
const dummycurrExc = "Daily Exercise", dummylastExc = "Quick Meditation";
const lastexctitle = "Last Exercise performed:";
const funfacttitle = "Fun Fact!";
const funfacts = [
  "Laughing is a workout!",
  "Walking boosts creativity.",
  "Muscles “remember” workouts.",
  "Your heart beats over 100,000 times a day.",
  "Chewing gum can burn calories."
];
const dailyQuotetitle = "Daily Quote";
const dailyQuotes = [
  "The only way to do great work is to love what you do.",
  "Every day is a second chance to make it better.",
  "Happiness is not something ready-made. It comes from your own actions.",
  "The secret of getting ahead is getting started.",
  "Do something today that your future self will thank you for."
];
const register = "Sign-Up", Login = "Login";
const textColor = Color.fromARGB(255, 220, 73, 5);
const boxcolor = Color.fromARGB(255, 249, 96, 0);
const textinBox = Color.fromARGB(255, 255, 255, 255);
const aggrement = "I Agree to Terms & policy";
const alrdyhaveacc = "Already have an account?";
const donothaveAcc = "Do not have an account?  ";
const forumpage = "Community Forums";
const dummyusers = ['user1', 'user2', 'user3'];
const dummyusernames = ['username1', 'username2', 'username3'];
const dummymessages = [
  'Hey everyone! Just joined this forum and excited to connect with you all.',
  'Does anyone know a good resource for learning Flutter animations? Struggling a bit with my project.',
  'Just completed my first app using Flutter! Feeling accomplished and would love feedback from you guys!'
];
const excercisebar = "Mindfulness Exercises";
const dailyExcercies = "Daily Excercises",
    mindExc = "Mindful Excercises",
    medexc = "Quick Meditation";
const dailyexcdescp = "Follow your daily excercies for better mental health",
    mindexcdescp = "-> Breathing Excercises \n-> Relaxations \n-> Meditations",
    medexcdescp = "Find your quick relaxation here";
const dailyexcimgs = [stretch, squat, plank, jump];
const mindfullnessimgs = [mediation, breathing, journaling, eyes];
const meditationimgs = [relaxation, things, breathing, listen];

const dailyexs = [
  "Morning Stretch Routine",
  "Bodyweight Squats",
  "Plank Hold",
  "Brisk Walk or Light Jog"
];
const mindfulnessexs = [
  "Body Scan Meditation",
  "Mindful Breathing",
  "Gratitude Journaling",
  "Visualization Exercise"
];
const medtationexs = [
  "One-Minute Relaxation",
  "5-4-3-2-1 Grounding Technique",
  "Box Breathing",
  "Mindful Listening"
];

const dailyexcstimes = [
  "5-10 minutes",
  "2 sets of 15 reps (5 minutes)",
  "30 seconds to 1 minute per hold (3 minutes total)",
  "10-15 minutes"
];
const mindfulexcstimes = [
  "5-10 minutes",
  "3-5 minutes",
  "5 minutes",
  "5-7 minutes"
];
const medexcstimes = ["1 minute", "2-3 minutes", "2-3 minutes", "3-5 minutes"];

const home = "Home",
    activity = "Activities",
    forum = "Forum",
    profile = "Profile";

const profileScreen = "Your Profile";
const youremail = "Your Email:", yourname = "Your Name";
const yourTimeline = "Your Timelines";
const usersname = "Mehroz";
const usersemail = "Mehroz@gmail.com";

FirebaseAuth auth = FirebaseAuth.instance;

User? currentUser = auth.currentUser;
