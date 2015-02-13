User.create(name: "Kenn", email: "kenn@google.com", password: "1234")

Survey.create(user_id: 1, title: "Love JS", ans_percents: [0, 100, 50])

Question.create(survey_id: 1, content: "Do you love JS?")