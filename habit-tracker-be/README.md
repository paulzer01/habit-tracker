habit-tracker/
├── app/
│ ├── controllers/api/v1/ # Our API endpoints
│ │ ├── users_controller.rb
│ │ ├── sessions_controller.rb
│ │ ├── habits_controller.rb
│ │ ├── categories_controller.rb
│ │ └── completions_controller.rb
│ └── models/ # Database models
│ ├── user.rb
│ ├── habit.rb
│ ├── category.rb
│ └── completion.rb
└── config/
├── routes.rb # API routes
└── database.yml # Database configuration
