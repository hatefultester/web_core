
import 'dart:convert';

import '../kh_article_dto.dart';

String mockArticleDataEating = """
{
  "title": "The Holistic Benefits of Healthy Eating",
  "article": [
    {
      "section_title": "Introduction",
      "content": "Eating healthy is not just about maintaining a good physique, but it also has a profound effect on our mental and spiritual well-being. The food we consume affects our physical and emotional states, and can impact our energy levels, focus, and overall mood."
    },
    {
      "section_title": "Physical Benefits",
      "content": "Fast food, although convenient, is often loaded with unhealthy fats, sugars, and processed ingredients that can lead to weight gain, chronic diseases, and a weakened immune system. On the other hand, a diet rich in whole foods, fruits, vegetables, and lean protein can boost our immune system, improve our digestion, and give us the necessary energy to tackle our daily tasks."
    },
    {
      "section_title": "Mental and Emotional Benefits",
      "content": "Eating healthy also affects our mental and emotional well-being. Studies have shown that a diet high in fruits, vegetables, and whole grains can reduce the risk of depression and anxiety. On the other hand, a diet high in processed and fast food can increase the risk of these mental health issues."
    },
    {
      "section_title": "Spiritual Benefits",
      "content": "In addition to the physical and mental benefits, eating healthy can also have spiritual benefits. In many cultures and belief systems, food is seen as a source of energy that affects our spiritual vibration. Eating high vibrational foods such as fresh fruits and vegetables can help raise our own vibration and increase our connection to the divine."
    },
    {
      "section_title": "Low Vibrational Foods",
      "content": "In contrast, fast food and processed foods are often seen as low vibrational due to their lack of life force energy. Consuming these foods regularly can lead to a sense of disconnection and stagnation in our spiritual growth."
    },
    {
      "section_title": "Conclusion",
      "content": "Overall, the benefits of eating a healthy diet extend far beyond just physical health. By making conscious choices about what we put into our bodies, we can improve our mental, emotional, and spiritual well-being as well. So, let's choose to nourish ourselves with wholesome, high vibrational foods and see the positive effects it has on our lives."
    }
  ]
}
""";

String mockArticleDtoYoga = """
{
  "title": "The Health Benefits of Yoga",
  "article": [
    {
      "section_title": "Introduction",
      "content": "Yoga is an ancient practice that has been around for centuries. It involves a series of postures and breathing exercises that can have a positive impact on both your physical and mental health. Here are some reasons why yoga is good for you:"
    },
    {
      "section_title": "Increases Flexibility",
      "content": "Yoga postures help to stretch and lengthen muscles, which can increase flexibility and range of motion. This can help to reduce the risk of injury and improve posture."
    },
    {
      "section_title": "Builds Strength",
      "content": "Many yoga poses require you to support your body weight, which can help to build strength in your muscles. This can also help to improve your overall fitness and endurance."
    },
    {
      "section_title": "Reduces Stress",
      "content": "Yoga has been shown to reduce stress and anxiety levels, thanks to its focus on mindfulness and deep breathing techniques. This can help to improve your mental health and wellbeing."
    },
    {
      "section_title": "Improves Balance",
      "content": "The practice of yoga can improve your balance and stability, which can help to reduce the risk of falls and improve overall coordination."
    },
    {
      "section_title": "Boosts Immunity",
      "content": "Certain yoga postures and breathing exercises have been shown to boost the immune system, which can help to protect against illness and disease."
    },
    {
      "section_title": "Conclusion",
      "content": "Overall, yoga is a great way to improve your physical and mental health. By incorporating regular yoga practice into your routine, you can experience increased flexibility, strength, reduced stress, improved balance, and a boost to your immunity."
    }
  ]
}
""";

String mockArticleDtoCalistetics = """
{
  "title": "The Benefits of Calisthenics for Health and Fitness",
  "article": [
    {
      "section_title": "Introduction",
      "content": "Calisthenics, also known as bodyweight training, is a form of exercise that involves using one's own body weight as resistance. This type of training has gained popularity in recent years due to its effectiveness in building strength, flexibility, and endurance without the need for expensive equipment or gym memberships."
    },
    {
      "section_title": "Versatility",
      "content": "One of the main benefits of calisthenics is its versatility. There are endless variations of exercises that can be performed, which means that individuals of all fitness levels can benefit from this type of training. Calisthenics exercises can be modified to make them easier or more challenging, depending on an individual's fitness level and goals."
    },
    {
      "section_title": "Accessibility",
      "content": "Another benefit of calisthenics is that it can be done anywhere, at any time. There is no need for a gym or equipment, making it an accessible form of exercise for anyone. This type of training is also great for those who enjoy outdoor activities, as many calisthenics exercises can be performed outdoors."
    },
    {
      "section_title": "Mental Health Benefits",
      "content": "In addition to its physical benefits, calisthenics can also have a positive impact on mental health. The focus required to perform these exercises, as well as the sense of accomplishment and progress that comes with improving in calisthenics, can help to reduce stress and improve overall well-being."
    },
    {
      "section_title": "Conclusion",
      "content": "Overall, calisthenics is a great form of exercise for anyone looking to improve their fitness and overall health. Its versatility, accessibility, and mental health benefits make it a popular choice for individuals of all ages and fitness levels."
    }
  ]
}
""";

String mockArticleDtoMuscle = """
{
  "title": "The Importance of Muscle Mass for Health",
  "article": [
    {
      "section_title": "Introduction",
      "content": "Muscle mass has numerous health benefits that go beyond aesthetics. Here are some reasons why it's good to have muscle mass."
    },
    {
      "section_title": "Increased Metabolism",
      "content": "Muscle mass burns more calories than fat, even when you're at rest. This means that the more muscle you have, the higher your metabolism will be, making it easier to maintain a healthy weight."
    },
    {
      "section_title": "Improved Insulin Sensitivity",
      "content": "Muscle tissue is more sensitive to insulin, which means that having more muscle can help regulate blood sugar levels and reduce the risk of developing diabetes."
    },
    {
      "section_title": "Better Bone Health",
      "content": "Strength training, which builds muscle mass, also helps to strengthen bones and reduce the risk of osteoporosis."
    },
    {
      "section_title": "Reduced Risk of Injury",
      "content": "Having strong muscles can help support and protect your joints, reducing the risk of injury."
    },
    {
      "section_title": "Improved Mental Health",
      "content": "Exercise, including strength training, has been shown to improve mental health and reduce symptoms of anxiety and depression."
    },
    {
      "section_title": "Conclusion",
      "content": "These are just a few of the many reasons why it's good to have muscle mass. Incorporating strength training into your exercise routine can help you reap these benefits and lead a healthier life."
    }
  ]
}
""";

String mockArticleDtoFasting = """
{
  "title": "The Health Benefits of Fasting",
  "article": [
    {
      "section_title": "Introduction",
      "content": "Fasting, or abstaining from food for a certain period of time, has been practiced for centuries across different cultures and religions. While some may associate fasting with extreme weight loss or religious observances, there are actually many benefits to incorporating fasting into your lifestyle."
    },
    {
      "section_title": "Improved Insulin Sensitivity",
      "content": "One of the primary benefits of fasting is improved insulin sensitivity. When you fast, your body enters a state of ketosis, where it begins to burn stored fat for energy instead of glucose. This process can help regulate blood sugar levels and increase insulin sensitivity, which is important for preventing chronic diseases like diabetes."
    },
    {
      "section_title": "Reduced Inflammation",
      "content": "Fasting has also been shown to reduce inflammation in the body. Inflammation is the root cause of many diseases, including arthritis, heart disease, and cancer. By reducing inflammation, fasting can help lower the risk of these and other chronic conditions."
    },
    {
      "section_title": "Improved Cognitive Function",
      "content": "In addition to these health benefits, fasting can also improve cognitive function. Studies have shown that fasting can enhance brain function and improve memory and concentration. It may also help protect against neurodegenerative diseases like Alzheimer's."
    },
    {
      "section_title": "Safe Fasting",
      "content": "It's important to note that fasting should be done safely and under the guidance of a healthcare professional. Depending on your health status and individual needs, there are different types of fasting protocols that may be more appropriate for you."
    },
    {
      "section_title": "Conclusion",
      "content": "Incorporating fasting into your lifestyle can be a powerful tool for improving your overall health and wellbeing. Whether you choose to fast for religious reasons, weight loss, or simply to improve your health, it's important to approach fasting in a safe and mindful way. Consult with a healthcare professional and listen to your body to determine what type of fasting protocol is right for you."
    }
  ]
}
""";

String mockArticleDtoHealth = """
{
  "title": "The Many Dimensions of Health",
  "article": [
    {
      "section_title": "Introduction",
      "content": "Health is a term that encompasses much more than just the absence of illness or disease. It refers to a state of physical, mental, and social well-being, and is influenced by a variety of factors including genetics, lifestyle, and environmental factors."
    },
    {
      "section_title": "Physical Health",
      "content": "Physical health is one of the most obvious components of overall health. It refers to the state of the body's physical functions, including the absence of illness or injury. Physical health can be improved through regular exercise, a healthy diet, and good sleep habits."
    },
    {
      "section_title": "Mental Health",
      "content": "Mental health is another important aspect of overall health. It refers to the state of a person's emotional and psychological well-being. Good mental health is characterized by positive self-esteem, the ability to cope with stress and difficult emotions, and a sense of purpose and meaning in life."
    },
    {
      "section_title": "Social Health",
      "content": "Social health refers to the quality of a person's relationships with others, including friends, family, and the community. A strong social support system is important for maintaining good mental and physical health."
    },
    {
      "section_title": "Environmental Factors",
      "content": "Environmental factors can also play a significant role in overall health. These include things like exposure to toxins, access to clean air and water, and safe living conditions."
    },
    {
      "section_title": "Holistic Approach",
      "content": "Overall, achieving and maintaining good health requires a holistic approach that takes into account all of these different factors. This may involve making changes to your lifestyle, such as eating a healthy diet, getting regular exercise, and practicing stress-reducing techniques like meditation. It may also involve seeking professional help, such as working with a mental health therapist or a nutritionist, to address specific health concerns."
    },
    {
      "section_title": "Conclusion",
      "content": "In conclusion, health is a multi-faceted concept that encompasses physical, mental, and social well-being, as well as environmental factors. By taking a holistic approach to health and making positive changes to our lifestyle and environment, we can achieve and maintain optimal health and wellbeing."
    }
  ]
}
""";

String mockArticleDtoMeditation = """
{
"title": "The Many Benefits of Meditation",
"article": [
{
"section_title": "Introduction",
"content": "Meditation is an ancient practice that has been used for thousands of years to improve mental and physical health. In recent years, it has gained popularity in the Western world as a way to reduce stress and promote relaxation. However, the benefits of meditation go far beyond stress relief. In fact, there are numerous ways in which meditation can benefit your body and overall health."
},
{
"section_title": "Reducing Stress",
"content": "One of the most well-known benefits of meditation is its ability to reduce stress. When you meditate, you enter a state of deep relaxation that triggers the relaxation response in your body. This response is the opposite of the stress response and can help to lower your heart rate, blood pressure, and levels of the stress hormone cortisol. Over time, regular meditation can help you manage stress more effectively and improve your overall sense of well-being."
},
{
"section_title": "Additional Benefits",
"content": "But the benefits of meditation don't stop there. Studies have also shown that regular meditation can help to improve sleep, boost immunity, and reduce inflammation in the body. It can even help to lower blood pressure and improve cardiovascular health. Additionally, some research has suggested that meditation may be beneficial for managing symptoms of anxiety and depression."
},
{
"section_title": "Effects on the Brain",
"content": "One of the reasons that meditation is so effective is that it works by changing the structure and function of the brain. Research has shown that regular meditation can increase the size of certain areas of the brain that are responsible for attention, empathy, and emotional regulation. It can also increase the activity of the prefrontal cortex, which is the part of the brain responsible for decision-making and self-control."
}
]
}
""";

KhArticleDto? articleFromMock(ArticleMockDataType type) {
return KhArticleDto.fromJson(jsonDecode(type.data()));
}

enum ArticleMockDataType {
  meditation, health, fasting, muscle, calistetics, yoga, food;

  String data() {
    switch (this) {

      case ArticleMockDataType.meditation:
        return mockArticleDtoMeditation;
      case ArticleMockDataType.health:
        return mockArticleDtoHealth;
      case ArticleMockDataType.fasting:
        return mockArticleDtoFasting;
      case ArticleMockDataType.muscle:
        return mockArticleDtoMuscle;
      case ArticleMockDataType.calistetics:
        return mockArticleDtoCalistetics;
      case ArticleMockDataType.yoga:
        return mockArticleDtoYoga;
      case ArticleMockDataType.food:
        return mockArticleDataEating;
    }
  }

  String imagePath() {
    String imagePath = 'assets/images/kh';

    switch (this) {
      case ArticleMockDataType.meditation:
        imagePath = '$imagePath/meditace.png';
        break;
      case ArticleMockDataType.health:
        imagePath = '$imagePath/ovoce.png';
        break;
      case ArticleMockDataType.fasting:
        imagePath = '$imagePath/pust.png';
        break;
      case ArticleMockDataType.muscle:
        imagePath = '$imagePath/nm.png';
        break;
      case ArticleMockDataType.calistetics:
        imagePath = '$imagePath/kalistinik.png';
        break;
      case ArticleMockDataType.yoga:
        imagePath = '$imagePath/yoga.png';
        break;
    }

    return imagePath;
  }
}
